require 'test_helper'

class ListingSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search_listing" do
    get listing_search_search_listing_url
    assert_response :success
  end

end
