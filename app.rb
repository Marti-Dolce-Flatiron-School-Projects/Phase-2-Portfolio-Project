# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './environments'


get '/' do
  erb :start
end

