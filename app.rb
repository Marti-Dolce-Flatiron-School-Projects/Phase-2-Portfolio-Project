# frozen_string_literal: true

# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require_relative 'config/environments'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :start
  end
  # get '/views/authentication' do
  #   erb :index
  # end
end
