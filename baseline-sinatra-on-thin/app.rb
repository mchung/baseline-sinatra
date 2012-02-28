module Baseline
  class App < Sinatra::Base
    get '/' do
      'Sinatra on Thin'
    end
  end
end