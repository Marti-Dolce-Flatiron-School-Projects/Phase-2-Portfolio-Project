# frozen_string_literal: true

# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require_relative 'config/environments'


get '/' do
  erb :start
end

get '/views/authentication' do
  erb :index
end

