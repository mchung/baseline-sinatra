require 'sinatra/base'
require 'sinatra/synchrony'

$stdout.sync = true

require './app'
run Baseline::App