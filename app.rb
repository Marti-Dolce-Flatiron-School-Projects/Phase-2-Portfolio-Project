# frozen_string_literal: true

# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require_relative 'config/environments'

configure do
  set :public_folder, 'public'
  set :views, '/views'
end

get '/' do
  erb :start
end

get '/authentication' do
  erb :index
end

