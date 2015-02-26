require 'sinatra/base'
require 'mongo'

$stdout.sync = true

require './mongo_extension'
require './app'
run Baseline::App