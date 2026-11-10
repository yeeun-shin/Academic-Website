# WEBrick 1.9.2 treats a matching If-Range as If-None-Match and returns 304.
# Browsers need a 206 response with the requested bytes to resume video playback.
# This affects only Jekyll's development server, not the generated site.
if ENV['JEKYLL_ENV'] == 'development'
  require 'webrick'

  module DevelopmentIfRangeFix
    def do_GET(request, response)
      if request['range'] && (validator = request['if-range'])
        stat = File.stat(@local_path)
        etag = format('%x-%x-%x', stat.ino, stat.size, stat.mtime.to_i)
        matches = if validator.start_with?('"') || validator.start_with?('W/') || validator == etag
                    validator == etag || validator == "\"#{etag}\""
                  else
                    begin
                      Time.httpdate(validator).to_i >= stat.mtime.to_i
                    rescue ArgumentError
                      false
                    end
                  end

        # If the validator changed, the whole current file must be returned.
        request.header.delete('range') unless matches
        # WEBrick's not_modified? incorrectly handles If-Range as a 304 check.
        request.header.delete('if-range')
      end
      super
    end
  end

  WEBrick::HTTPServlet::DefaultFileHandler.prepend(DevelopmentIfRangeFix)
end
