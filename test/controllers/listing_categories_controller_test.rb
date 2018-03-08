require 'test_helper'

class ListingCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing_category = listing_categories(:one)
  end

  test "should get index" do
    get listing_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_category_url
    assert_response :success
  end

  test "should create listing_category" do
    assert_difference('ListingCategory.count') do
      post listing_categories_url, params: { listing_category: { banner_image: @listing_category.banner_image, description: @listing_category.description, name: @listing_category.name } }
    end

    assert_redirected_to listing_category_url(ListingCategory.last)
  end

  test "should show listing_category" do
    get listing_category_url(@listing_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_category_url(@listing_category)
    assert_response :success
  end

  test "should update listing_category" do
    patch listing_category_url(@listing_category), params: { listing_category: { banner_image: @listing_category.banner_image, description: @listing_category.description, name: @listing_category.name } }
    assert_redirected_to listing_category_url(@listing_category)
  end

  test "should destroy listing_category" do
    assert_difference('ListingCategory.count', -1) do
      delete listing_category_url(@listing_category)
    end

    assert_redirected_to listing_categories_url
  end
end
