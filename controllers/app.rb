# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require_relative '../config/environments'


get '/' do
  erb :start
end

