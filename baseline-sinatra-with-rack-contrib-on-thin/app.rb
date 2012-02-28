module Baseline
  class App < Sinatra::Base
    get '/' do
      'Sinatra on Thin w/ Rack::Contrib'
    end

    get '/rewrite-new' do
      'Hooray, rewrite-new!'
    end

    get '/marc' do
      'Hooray, marc!'
    end
  end
end