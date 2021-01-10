# config.ru


require_relative 'config/environments'
$stdout.sync = true
run Sinatra::Application
use CompaniesController
use AgentsController
use AuthenticationsController
use ListingManagersController
require './app'
