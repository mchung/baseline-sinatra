module Baseline
  class App < Sinatra::Base
    register Sinatra::MongoExtension
    
    set :mongo, 'mongo://localhost:27017/sinatra-mongo-example'

    get '/' do
      'Sinatra on Thin w/ Mongo'
    end

    get '/mongo' do
      "<pre>#{mongo['testCollection'].find({}).collect {|x| x.inspect}}</pre>"
    end

    get '/mongo-put' do
      mongo['testCollection'].insert({
        'name' => 'MongoDB', 
        'type' => 'database', 
        'count' => 1, 
        'info' => {
          'x' => 203, 
          'y' => '102'}
        }
      ).inspect
    end
  end
end

# http://api.mongodb.org/ruby/current/file.TUTORIAL.html
# http://www.mongodb.org/display/DOCS/Querying
# http://www.slideshare.net/oisin/constructing-web-apis-with-rack-sinatra-and-mongodb