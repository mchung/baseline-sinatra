require 'active_record'
require 'logger'

if ENV["RACK_ENV"] == "production"
  require 'uri'

  db = URI.parse(ENV['DATABASE_URL'])

  ActiveRecord::Base.establish_connection(
    :adapter  => 'postgresql',
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )

else

  ActiveRecord::Base.establish_connection(
    :adapter  => 'postgresql',
    :host     => 'localhost',
    :username => 'postgres',
    :database => 'pg91-dev',
    :encoding => 'utf8'
  )

end
ActiveRecord::Base.logger = Logger.new(STDOUT)

class Blog < ActiveRecord::Base
end
