#!/usr/bin/env ruby
# frozen_string_literal: true

require "digest"
require "fileutils"
require "nokogiri"
require "pathname"
require "set"
require "uri"

site_dir = Pathname(ARGV.fetch(0)).expand_path
output_dir = Pathname(ARGV.fetch(1)).expand_path
abort "Built site not found: #{site_dir}" unless site_dir.directory?

FileUtils.rm_rf(output_dir)
FileUtils.mkdir_p(output_dir)

def relative_path(root, path)
  path.relative_path_from(root).to_s
end

def sha256(path)
  Digest::SHA256.file(path).hexdigest
end

def route_for(relative)
  return "/" if relative == "index.html"
  return "/#{relative.delete_suffix("index.html")}" if relative.end_with?("/index.html")

  "/#{relative}"
end

def local_url(raw, base_route)
  value = raw.to_s.strip
  return if value.empty? || value.start_with?("#", "//")
  return if value.match?(/\A(?:https?:|mailto:|tel:|data:|javascript:)/i)

  URI.join("https://baseline.invalid#{base_route}", value).path
rescue URI::Error
  nil
end

def candidates_for(site_dir, url_path)
  decoded = URI::DEFAULT_PARSER.unescape(url_path).sub(%r{\A/}, "")
  direct = site_dir.join(decoded)
  candidates = [direct]
  candidates << direct.join("index.html") if url_path.end_with?("/") || direct.directory?
  unless File.extname(decoded).length.positive?
    candidates << site_dir.join("#{decoded}.html")
    candidates << direct.join("index.html")
  end
  candidates.uniq
end

def status_for(site_dir, url_path)
  candidates_for(site_dir, url_path).any?(&:file?) ? "ok" : "missing"
end

files = site_dir.glob("**/*").select(&:file?).sort
html_files = files.select { |path| path.extname == ".html" }
document_files = files.select { |path| [".html", ".xml"].include?(path.extname) }
css_js_files = files.select { |path| [".css", ".js"].include?(path.extname) }

routes = document_files.map { |path| route_for(relative_path(site_dir, path)) }.sort
output_dir.join("routes.txt").write(routes.join("\n") + "\n")

html_hashes = html_files.map do |path|
  relative = relative_path(site_dir, path)
  "#{sha256(path)}  #{relative}"
end
output_dir.join("html.sha256").write(html_hashes.join("\n") + "\n")

css_js_hashes = css_js_files.map do |path|
  relative = relative_path(site_dir, path)
  "#{sha256(path)}  #{relative}"
end
output_dir.join("css-js.sha256").write(css_js_hashes.join("\n") + "\n")

asset_rows = files.reject { |path| [".html", ".xml"].include?(path.extname) }.map do |path|
  relative = relative_path(site_dir, path)
  [relative, path.size, sha256(path)].join("\t")
end
output_dir.join("assets.tsv").write("path\tbytes\tsha256\n#{asset_rows.join("\n")}\n")

internal_links = Set.new
asset_references = Set.new

html_files.each do |path|
  relative = relative_path(site_dir, path)
  source_route = route_for(relative)
  document = Nokogiri::HTML(path.read)

  document.css("a[href]").each do |node|
    url_path = local_url(node["href"], source_route)
    internal_links << [source_route, node["href"], url_path] if url_path
  end

  {
    "img[src]" => "src",
    "script[src]" => "src",
    "source[src]" => "src",
    "video[poster]" => "poster",
    "link[href]" => "href"
  }.each do |selector, attribute|
    document.css(selector).each do |node|
      url_path = local_url(node[attribute], source_route)
      asset_references << [source_route, node[attribute], url_path] if url_path
    end
  end

  document.css("img[srcset], source[srcset]").each do |node|
    node["srcset"].to_s.split(",").each do |entry|
      raw = entry.strip.split(/\s+/, 2).first
      url_path = local_url(raw, source_route)
      asset_references << [source_route, raw, url_path] if url_path
    end
  end

  document.css("[style]").each do |node|
    node["style"].to_s.scan(/url\((['\"]?)(.*?)\1\)/i).each do |_quote, raw|
      url_path = local_url(raw, source_route)
      asset_references << [source_route, raw, url_path] if url_path
    end
  end
end

files.select { |path| path.extname == ".css" }.each do |path|
  relative = relative_path(site_dir, path)
  source_route = "/#{relative}"
  path.read.scan(/url\((['\"]?)(.*?)\1\)/i).each do |_quote, raw|
    url_path = local_url(raw, source_route)
    asset_references << [source_route, raw, url_path] if url_path
  end
end

link_rows = internal_links.to_a.sort.map do |source, raw, resolved|
  [source, raw, resolved, status_for(site_dir, resolved)].join("\t")
end
missing_link_rows = link_rows.select { |row| row.end_with?("\tmissing") }

asset_rows_checked = asset_references.to_a.sort.map do |source, raw, resolved|
  [source, raw, resolved, status_for(site_dir, resolved)].join("\t")
end
missing_asset_rows = asset_rows_checked.select { |row| row.end_with?("\tmissing") }

header = "source\traw\tresolved\tstatus\n"
output_dir.join("internal-links.tsv").write(header + link_rows.join("\n") + "\n")
output_dir.join("missing-internal-links.tsv").write(header + missing_link_rows.join("\n") + "\n")
output_dir.join("asset-references.tsv").write(header + asset_rows_checked.join("\n") + "\n")
output_dir.join("missing-assets.tsv").write(header + missing_asset_rows.join("\n") + "\n")

summary = <<~SUMMARY
  generated_documents: #{document_files.length}
  html_documents: #{html_files.length}
  css_js_assets: #{css_js_files.length}
  total_files: #{files.length}
  total_bytes: #{files.sum(&:size)}
  internal_link_references: #{link_rows.length}
  missing_internal_links: #{missing_link_rows.length}
  asset_references: #{asset_rows_checked.length}
  missing_assets: #{missing_asset_rows.length}
SUMMARY
output_dir.join("summary.txt").write(summary)

puts summary
puts "Baseline written to #{output_dir}"
