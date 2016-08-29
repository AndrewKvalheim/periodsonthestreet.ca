#
# Content
#

# Pretty URLs
activate :directory_indexes

# HTML
set :haml, ugly: true

# CSS
activate :autoprefixer

# Content modification times
activate :vcs_time

#
# Development
#

# Console
configure :development do
  activate :pry
end

#
# Deployment
#

# Caching
configure :build do
  activate :asset_hash
end

# Optimization
configure :build do
  activate :minify_css
  activate :minify_html, remove_http_protocol: false,
                         remove_intertag_spaces: false
  activate :minify_javascript
end
