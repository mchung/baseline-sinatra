require 'sinatra/base'

# $LOAD_PATH.unshift ::File.expand_path(::File.dirname(__FILE__) + '/lib')
require './lib/database'

$stdout.sync = true

class App < Sinatra::Base
  get '/' do
    haml :index
  end
end

use ActiveRecord::QueryCache
run App