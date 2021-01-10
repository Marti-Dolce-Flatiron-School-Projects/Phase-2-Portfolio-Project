# config.ru

require 'controllers/app'
$stdout.sync = true
run Sinatra::Application
