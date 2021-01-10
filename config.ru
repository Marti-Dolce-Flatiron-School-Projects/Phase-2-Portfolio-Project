# config.ru

require './config/environment'
$stdout.sync = true
run Sinatra::Application
