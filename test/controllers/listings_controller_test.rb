require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get listings_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_url
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post listings_url, params: { listing: { address: @listing.address, banner_image: @listing.banner_image, city: @listing.city, contact: @listing.contact, country: @listing.country, description: @listing.description, email: @listing.email, fb_url: @listing.fb_url, gplus_url: @listing.gplus_url, latitude: @listing.latitude, linkedin_url: @listing.linkedin_url, listing_category_id: @listing.listing_category_id, longitude: @listing.longitude, name: @listing.name, state: @listing.state, twitter_url: @listing.twitter_url, website: @listing.website, zipcode: @listing.zipcode } }
    end

    assert_redirected_to listing_url(Listing.last)
  end

  test "should show listing" do
    get listing_url(@listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_url(@listing)
    assert_response :success
  end

  test "should update listing" do
    patch listing_url(@listing), params: { listing: { address: @listing.address, banner_image: @listing.banner_image, city: @listing.city, contact: @listing.contact, country: @listing.country, description: @listing.description, email: @listing.email, fb_url: @listing.fb_url, gplus_url: @listing.gplus_url, latitude: @listing.latitude, linkedin_url: @listing.linkedin_url, listing_category_id: @listing.listing_category_id, longitude: @listing.longitude, name: @listing.name, state: @listing.state, twitter_url: @listing.twitter_url, website: @listing.website, zipcode: @listing.zipcode } }
    assert_redirected_to listing_url(@listing)
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete listing_url(@listing)
    end

    assert_redirected_to listings_url
  end
end
