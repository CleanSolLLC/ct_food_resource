require "test_helper"

class FoodPantriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @food_pantry = food_pantries(:one)

    post session_path, params: {
      email_address: @user.email_address,
      password: "password"
    }
  end

  test "should get index" do
    get food_pantries_url
    assert_response :success
  end

  test "should get new" do
    get new_food_pantry_url
    assert_response :success
  end

  test "should create food_pantry" do
    assert_difference("FoodPantry.count") do
      post food_pantries_url, params: { food_pantry: { address_line1: @food_pantry.address_line1, address_line2: @food_pantry.address_line2, city: @food_pantry.city, additional_info: @food_pantry.additional_info, contact: @food_pantry.contact, name: @food_pantry.name, phone_number: @food_pantry.phone_number, state: @food_pantry.state, town_id: @food_pantry.town_id, verified: @food_pantry.verified, zip_code: @food_pantry.zip_code, user_id: @food_pantry.user_id } }
    end

    assert_redirected_to food_pantry_url(FoodPantry.last)
  end

  test "should show food_pantry" do
    get food_pantry_url(@food_pantry)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_pantry_url(@food_pantry)
    assert_response :success
  end

  test "should update food_pantry" do
    patch food_pantry_url(@food_pantry), params: { food_pantry: { address_line1: @food_pantry.address_line1, address_line2: @food_pantry.address_line2, city: @food_pantry.city, additional_info: @food_pantry.additional_info, contact: @food_pantry.contact, name: @food_pantry.name, phone_number: @food_pantry.phone_number, state: @food_pantry.state, town_id: @food_pantry.town_id, verified: @food_pantry.verified, zip_code: @food_pantry.zip_code, user_id: @food_pantry.user_id } }
    assert_redirected_to food_pantry_url(@food_pantry)
  end

  test "should destroy food_pantry" do
    assert_difference("FoodPantry.count", -1) do
      delete food_pantry_url(@food_pantry)
    end

    assert_redirected_to food_pantries_url
  end
end
