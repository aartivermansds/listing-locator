class ListingSearchController < ApplicationController
  layout 'listing'
  def search_listing
    if params[:search][:latitude].present? && params[:search][:longitude].present?
      lat = params[:search][:latitude]
      long = params[:search][:longitude]
    end
    if params[:search][:keyword].present?
      if params[:search][:keyword] == "Listings" || params[:search][:keyword] == "listings"
        @listings = Listing.near([lat, long], 50, units: :km).order(:name).page params[:page]
      elsif params[:search][:keyword] == "Places" || params[:search][:keyword] == "places"
        @places = Place.near([lat, long], 50, units: :km).order(:name).page params[:page]
      end
    else
      @listings = Listing.near([lat, long], 50, units: :km).order(:name).page params[:page]
    end
  end


end
