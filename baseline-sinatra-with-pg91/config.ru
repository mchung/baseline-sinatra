require 'sinatra/base'

# $LOAD_PATH.unshift ::File.expand_path(::File.dirname(__FILE__) + '/lib')
require './lib/database'

$stdout.sync = true

require './app'
use ActiveRecord::QueryCache
run Baseline::App