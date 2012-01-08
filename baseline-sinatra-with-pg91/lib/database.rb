require 'active_record'
require 'logger'

if ENV["RACK_ENV"] == "production"
  db = URI.parse(ENV['DATABASE_URL'])

  ActiveRecord::Base.establish_connection(
    :adapter  => 'postgres',
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
else
  ActiveRecord::Base.establish_connection(
    :adapter => 'sqlite3',
    :database => 'db/development.sqlite3',
    :pool => 5,
    :timeout => 5000
  )
end
ActiveRecord::Base.logger = Logger.new(STDOUT)

class Blog < ActiveRecord::Base
end
