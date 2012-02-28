module Baseline
  class App < Sinatra::Base
    register Sinatra::Synchrony

    get '/' do
      'Sinatra on Thin w/ Synchrony'
    end
  end
end
