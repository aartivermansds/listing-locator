class PlacesController < ApplicationController
  before_action :set_listing, only: [:show]

  layout 'listing'
  
  def index
    @places = Place.order(:name).page params[:page]
  end

  def show
    @latest_place = Place.last(5)


    @place_categories = PlaceCategory.all
    
    # Nearby Listings to this place

    @near_by_listings = Listing.near([@place.latitude, @place.longitude], 20, units: :km)

    # Nearby Accommodations to this place

    @near_by_accomodations = Accomodation.near([@place.latitude, @place.longitude], 20, units: :km)

  end

  private

    def set_listing
      @place = Place.find(params[:id])
    end

end
