ENV['SINATRA_ENV'] ||= "development"

require 'mysql2'
require 'sinatra'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

def fi_check_migration
  ActiveRecord::Migration.check_pending!
rescue ActiveRecord::PendingMigrationError
  raise ActiveRecord::PendingMigrationError, <<~EX_MSG
    Migrations are pending. To resolve this issue, run:
          rake db:migrate SINATRA_ENV=test
  EX_MSG
end

require './app/controllers/application_controller'
require_all 'app'
