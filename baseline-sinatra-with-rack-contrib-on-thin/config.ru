require 'sinatra/base'
require 'rack/rewrite'

$stdout.sync = true

use Rack::Rewrite do
  rewrite '/rewrite-old', '/rewrite-new'
  r301 '/marc-chung', '/marc'
  r301 %r{/pages/(\w+)-\w+}, '/$1' # /pages/marc-chung -> /marc
  r302 '/marcdotcom', 'http://marcchung.com/blog'
  r302 '/super', 'http://marcchung.com'

  # How to rewrite base on host name. yiwen.org resolves to 127.0.0.1
  # Using a proc
  r302 '/', 'http://blekko.com', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'] == 'blekko.yiwen.org'
  }

  # Shorthand
  r302 '/', 'http://bing.com', :host => "bing.yiwen.org"
  r302 '/', 'http://google.com', :host => "google.yiwen.org"
end

require './app'
run Baseline::App