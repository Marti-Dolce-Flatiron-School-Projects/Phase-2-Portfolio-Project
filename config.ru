# config.ru

require 'controllers/app'
require_relative 'config/environments'
$stdout.sync = true
run Sinatra::Application
