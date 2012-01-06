require 'sinatra/base'
require 'sinatra/synchrony'

$stdout.sync = true

class App < Sinatra::Base
  register Sinatra::Synchrony

  get '/' do
    'Sinatra on Thin w/ Synchrony'
  end
end

run App