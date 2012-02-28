module Baseline
  class App < Sinatra::Base
    get '/' do
      'Sinatra on Unicorn'
    end
  end
end
