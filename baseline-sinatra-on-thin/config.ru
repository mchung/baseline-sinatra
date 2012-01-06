require 'sinatra/base'

$stdout.sync = true

class App < Sinatra::Base
  get '/' do
    'Sinatra on Thin'
  end
end

run App