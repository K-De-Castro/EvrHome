class ListingsController < ApplicationController
  # before_action :set_listing, only: [:show, :edit, :update, :destroy]

  # GET /listings
  # GET /listings.json
  def index
    # @listings = Listing.all
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    @listing = Listing.find(params[:id])
  end

  # GET /listings/new
  def new
    # @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit

  end

  # POST /listings
  # POST /listings.json
  def create
    # render plain: params[:listings].inspect
    @listing = Listing.new(listing_params)

    @listing.save
    redirect_to action:"show"

  end

# a method to specify what a listing is allowed to have
  private def listing_params
    params.require(:listing).permit(:name, :time)
  end


end
