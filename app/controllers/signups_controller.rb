class SignupsController < ApplicationController

  # GET: /signups
  get "/signups" do
    erb :"/signups/index.html"
  end

  # GET: /signups/new
  get "/signups/new" do
    erb :"/signups/new.html"
  end

  # POST: /signups
  post "/signups" do
    redirect "/signups"
  end

  # GET: /signups/5
  get "/signups/:id" do
    erb :"/signups/show.html"
  end

  # GET: /signups/5/edit
  get "/signups/:id/edit" do
    erb :"/signups/edit.html"
  end

  # PATCH: /signups/5
  patch "/signups/:id" do
    redirect "/signups/:id"
  end

  # DELETE: /signups/5/delete
  delete "/signups/:id/delete" do
    redirect "/signups"
  end
end
