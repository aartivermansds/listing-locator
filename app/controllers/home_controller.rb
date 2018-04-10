class HomeController < ApplicationController
  layout 'listing' 
  def index
    @listings = Listing.all
    @places =  Place.all
  end
end
