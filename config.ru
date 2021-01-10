# config.ru

require './app'
require_relative 'config/environments'
$stdout.sync = true
run Sinatra::Application
use CompaniesController
use AgentsController
use AuthenticationsController
use ListingManagersController