#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"

baseline_dir = Pathname(ARGV.fetch(0)).expand_path
current_dir = Pathname(ARGV.fetch(1)).expand_path
abort "Baseline not found: #{baseline_dir}" unless baseline_dir.directory?
abort "Comparison scan not found: #{current_dir}" unless current_dir.directory?

manifest_names = %w[
  routes.txt
  html.sha256
  css-js.sha256
  assets.tsv
  internal-links.tsv
  missing-internal-links.tsv
  asset-references.tsv
  missing-assets.tsv
  summary.txt
]

changed = manifest_names.reject do |name|
  baseline_dir.join(name).read == current_dir.join(name).read
end

if changed.empty?
  puts "Build output matches the committed baseline."
  exit 0
end

puts "Build output differs from the baseline:"
changed.each { |name| puts "  - #{name}" }
puts "Run `diff -ru _baseline/current <comparison-dir>` for details, or"
puts "refresh intentionally with `bin/site baseline` after reviewing changes."
exit 1
