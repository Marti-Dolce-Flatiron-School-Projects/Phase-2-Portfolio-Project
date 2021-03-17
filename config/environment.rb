# frozen_string_literal: true

ENV['SINATRA_ENV'] ||= 'development'

require 'bundler/setup'
require 'mysql2'
require 'dotenv'
Dotenv.load('.env')

Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.logger = Logger.new($stdout)

configure :development do
  ActiveRecord::Base.establish_connection(
    adapter: 'mysql2',
    encoding: 'utf8',
    database: 'dev_listings_manager',
    username: 'root',
    password: 'Palo5non!'
  )
end
#
# configure :test do
#   ActiveRecord::Base.establish_connection(
#     adapter: 'sqlite3',
#     database: "db/#{ENV['SINATRA_ENV']}.sqlite"
#   )
# end

require './app/controllers/application_controller'
require_all 'app'