# config.ru

require 'controllers/app'
require './config/environments'
$stdout.sync = true
run Sinatra::Application
