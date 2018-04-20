require 'test_helper'

class AccomodationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accomodation = accomodations(:one)
  end

  test "should get index" do
    get accomodations_url
    assert_response :success
  end

  test "should get new" do
    get new_accomodation_url
    assert_response :success
  end

  test "should create accomodation" do
    assert_difference('Accomodation.count') do
      post accomodations_url, params: { accomodation: { address: @accomodation.address, banner_image: @accomodation.banner_image, city: @accomodation.city, contact: @accomodation.contact, country: @accomodation.country, description: @accomodation.description, email: @accomodation.email, latitude: @accomodation.latitude, longitude: @accomodation.longitude, name: @accomodation.name, no_of_halls: @accomodation.no_of_halls, no_of_rooms: @accomodation.no_of_rooms, no_of_toilets: @accomodation.no_of_toilets, state: @accomodation.state, user_id: @accomodation.user_id, website: @accomodation.website, zipcode: @accomodation.zipcode } }
    end

    assert_redirected_to accomodation_url(Accomodation.last)
  end

  test "should show accomodation" do
    get accomodation_url(@accomodation)
    assert_response :success
  end

  test "should get edit" do
    get edit_accomodation_url(@accomodation)
    assert_response :success
  end

  test "should update accomodation" do
    patch accomodation_url(@accomodation), params: { accomodation: { address: @accomodation.address, banner_image: @accomodation.banner_image, city: @accomodation.city, contact: @accomodation.contact, country: @accomodation.country, description: @accomodation.description, email: @accomodation.email, latitude: @accomodation.latitude, longitude: @accomodation.longitude, name: @accomodation.name, no_of_halls: @accomodation.no_of_halls, no_of_rooms: @accomodation.no_of_rooms, no_of_toilets: @accomodation.no_of_toilets, state: @accomodation.state, user_id: @accomodation.user_id, website: @accomodation.website, zipcode: @accomodation.zipcode } }
    assert_redirected_to accomodation_url(@accomodation)
  end

  test "should destroy accomodation" do
    assert_difference('Accomodation.count', -1) do
      delete accomodation_url(@accomodation)
    end

    assert_redirected_to accomodations_url
  end
end
