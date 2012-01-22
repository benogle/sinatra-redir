require './root'
require 'rack/rewrite'

DOMAIN = 'http://benogle.com'

use Rack::Rewrite do
  r301 %r{/(\d+/\d+/\d+/[a-zA-Z_-]+)/?}, "#{DOMAIN}/$1.html"
  r301 %r{.*}, "#{DOMAIN}$&"
end

run Sinatra::Application