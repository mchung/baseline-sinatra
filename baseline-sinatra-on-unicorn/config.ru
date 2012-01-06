require 'sinatra/base'

$stdout.sync = true

class App < Sinatra::Base
  get '/' do
    'Sinatra on Unicorn'
  end
end

run App