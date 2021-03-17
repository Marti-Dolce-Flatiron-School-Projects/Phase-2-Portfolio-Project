# frozen_string_literal: true

# Listings Controller Class
class ListingsController < ApplicationController
  # Read ALL
  # GET: /listings
  get '/listings' do
    @listing = Listing.all
    erb :"/listings/index.html"
  end

  # CREATE new (render form)
  # GET: /listings/new
  get '/listings/new' do
    erb :"/listings/new.html"
  end

  # READ 1 listing
  # GET: /listings/5
  get '/listings/:id' do
    @listing = Listing.find_by_id(params[:id])
    erb :"/listings/show.html"
  end

  # POST Create new: /listings (save in db)
  post '/listings' do
    @listing = Listing.create(params)
    listing = Listing.new(params) ##

    if listing.save
      redirect to "/listings/#{@listing.id}"
    else
      redirect '/listings/new'
    end

    # UPDATE (render form)
    # GET: /listings/5/edit
    get '/listings/:id/edit' do
      @listing = Listing.find_by_id(params[:id])
      erb :"/listings/edit"
    end

    # UPDATE 1 listing (save in db)
    # PATCH: /listings/5
    patch '/listings/:id' do
      listing = Listing.find_by_id(params[:id])
      Listing.update(:address => params[:address], :hoa => params[:hoa],
                     :asking_price => params[:asking_price], :bedrooms => params[:bedrooms],
                     :status => params[:status], :bathrooms => params[:bathrooms],
                     :first_listed => params[:first_listed], :sqft => params[:sqft],
                     :summary.to_s => params[:summary.to_s])
      if listing.save
        redirect to "/listings/#{@listing.id}"
      else
        redirect to "/listings/#{@listing.id}/edit"
      end

      # DELETE: /listings/5/delete
      delete '/listings/:id/delete' do
        @listing = Listing.find_by_id(params[:id])
        listing.destroy
        redirect '/listings'
      end
    end
  end
end
