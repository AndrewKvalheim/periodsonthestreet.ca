require 'uri'

# Helpers for manipulating URLs
module UrlHelpers
  # Absolute URL for path or resource
  def absolute_url(target, *args)
    path = case target
           when Middleman::Sitemap::Resource then target.url
           else asset_url(target, *args)
           end

    URI.join(data.site.url, path).to_s
  end
end
