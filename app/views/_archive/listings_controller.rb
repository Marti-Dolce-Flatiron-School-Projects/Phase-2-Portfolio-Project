# frozen_string_literal: true

# Listings Controller Class

class ListingsController < ApplicationController
  # GET: NOT LOGGED IN
  get '/listings' do
    @listing = Listing.all
    erb :"/listings"
  end

  # GET: /listings
  get '/listings' do
    erb :"listings/show.html"
  end

  # GET: /listings/new -- done
  get '/listings/new' do
    erb :"/listings/new.html"
  end

  # POST: /listings --- done
  post '/listings' do
    @listing = Listing.create(:name => params[:name], :tag_name => params[:tag_name],
                              :asking_price => params[:asking_price], :bedrooms => params[:bedrooms], :status => params[:status], :bathrooms => params[:bathrooms], :first_listed => params[:first_listed], :sqft => params[:sqft], :summary.to_s => params[:summary.to_s])
    @listing.save
    redirect '/listings'
  end

  get '/listings/:id' do
    @listing = Listing.find(params[:id])
    erb :'/listings/show.html'
  end

  # GET: /listings/5
  get '/listings/:id/edit' do
    @listing = Listing.find(params[:id])
    erb :"/listings/edit.html"
  end

  patch '/listings/:id' do
    @listing = Listing.find(params[:id])
    if @listing.update(name: params[:name], tag_name: params[:tag_name], asking_price: params[:asking_price],
                       bedrooms: params[:bedrooms], status: params[:status], bathrooms: params[:bathrooms], first_listed: params[:first_listed], sqft: params[:sqft], summary: params[:summary.to])
      redirect to "/listings/#{params[:id]}"
      # else
      #   redirect to "/listings/#{params[:id]}/edit"
    end
  end

  delete '/listings/:id/delete' do
    @listing = Listing.find(params[:id])
    @listing.delete
    redirect '/listings'
  end
end
# # Read ALL
# # GET: /listings
# get '/listings' do
#   @listing = Listing.all
#   erb :"/listings/index.html"
# end
#
# # CREATE new (render form)
# # GET: /listings/new
# get '/listings/new' do
#   erb :"/listings/new.html"
# end
#
# # READ 1 listing
# # GET: /listings/5
# get '/listings/:id' do
#   @listing = Listing.find(params[:id])
#   erb :"/listings/show.html"
# end
#
# # POST Create new: /listings (save in db)
# post '/listings' do
#   @listing = Listing.create(params)
#   listing = Listing.new(params) ##
#
#   if listing.save
#     # create new instance of listing
#
#     Listing.create(:address => params[:address], :hoa => params[:hoa],
#                    :asking_price => params[:asking_price], :bedrooms => params[:bedrooms],
#                    :status => params[:status], :bathrooms => params[:bathrooms],
#                    :first_listed => params[:first_listed], :sqft => params[:sqft],
#                    :summary.to_s => params[:summary.to_s])
#     listing.save
#     redirect to "/listings/#{@listing.id}"
#   else
#     redirect '/listings/new'
#   end
#
#   # UPDATE (render form)
#   # GET: /listings/5/edit
#   get '/listings/:id/edit' do
#     @listing = Listing.find(params[:id])
#     erb :"/listings/edit"
#   end
#
#   # UPDATE 1 listing (save in db)
#   # PATCH: /listings/5
#   patch '/listings/:id' do
#     listing = Listing.find(params[:id])
#
#     Listing.update(:address => params[:address], :hoa => params[:hoa],
#                    :asking_price => params[:asking_price], :bedrooms => params[:bedrooms],
#                    :status => params[:status], :bathrooms => params[:bathrooms],
#                    :first_listed => params[:first_listed], :sqft => params[:sqft],
#                    :summary.to_s => params[:summary.to_s])
#     if listing.save
#       redirect to "/listings/#{@listing.id}"
#     else
#       redirect to "/listings/#{@listing.id}/edit"
#     end
#
#     # DELETE: /listings/5/delete
#     delete '/listings/:id/delete' do
#       @listing = Listing.find(params[:id])
#       listing.destroy
#       redirect '/listings'
#     end
#   end
# end
# end
