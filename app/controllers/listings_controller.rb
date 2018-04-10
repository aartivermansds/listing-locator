class ListingsController < ApplicationController
  before_action :set_listing, only: [:show]

  layout 'listing'
  
  def index
    @listings = Listing.order(:name).page params[:page]
  end

  def show
    @latest_listings = Listing.last(5)
  end

  private

    def set_listing
      @listing = Listing.find(params[:id])
    end

end
