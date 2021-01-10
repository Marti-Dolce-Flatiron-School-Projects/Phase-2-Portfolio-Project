require './config/environment'
$stdout.sync = true
run ApplicationController
use ListingsController
