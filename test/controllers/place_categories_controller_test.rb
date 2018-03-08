require 'test_helper'

class PlaceCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @place_category = place_categories(:one)
  end

  test "should get index" do
    get place_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_place_category_url
    assert_response :success
  end

  test "should create place_category" do
    assert_difference('PlaceCategory.count') do
      post place_categories_url, params: { place_category: { banner_image: @place_category.banner_image, description: @place_category.description, name: @place_category.name } }
    end

    assert_redirected_to place_category_url(PlaceCategory.last)
  end

  test "should show place_category" do
    get place_category_url(@place_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_place_category_url(@place_category)
    assert_response :success
  end

  test "should update place_category" do
    patch place_category_url(@place_category), params: { place_category: { banner_image: @place_category.banner_image, description: @place_category.description, name: @place_category.name } }
    assert_redirected_to place_category_url(@place_category)
  end

  test "should destroy place_category" do
    assert_difference('PlaceCategory.count', -1) do
      delete place_category_url(@place_category)
    end

    assert_redirected_to place_categories_url
  end
end
