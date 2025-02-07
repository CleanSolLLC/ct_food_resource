require "test_helper"

class FoodResourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @food_resource = food_resources(:one)

    post session_path, params: {
      email_address: @user.email_address,
      password: "password"
    }
  end

  test "should get index" do
    get food_resources_url
    assert_response :success
  end

  test "should get new" do
    get new_food_resource_url
    assert_response :success
  end

  test "should create food_resource" do
    assert_difference("FoodResource.count") do
      post food_resources_url, params: { food_resource: { address_line1: @food_resource.address_line1, address_line2: @food_resource.address_line2, city: @food_resource.city, additional_info: @food_resource.additional_info, contact: @food_resource.contact, name: @food_resource.name, phone_number: @food_resource.phone_number, state: @food_resource.state, town_id: @food_resource.town_id, verified: @food_resource.verified, zip_code: @food_resource.zip_code, user_id: @food_resource.user_id } }
    end

    assert_redirected_to food_resource_url(FoodResource.last)
  end

  test "should show food_resource" do
    get food_resource_url(@food_resource)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_resource_url(@food_resource)
    assert_response :success
  end

  test "should update food_resource" do
    patch food_resource_url(@food_resource), params: { food_resource: { address_line1: @food_resource.address_line1, address_line2: @food_resource.address_line2, city: @food_resource.city, additional_info: @food_resource.additional_info, contact: @food_resource.contact, name: @food_resource.name, phone_number: @food_resource.phone_number, state: @food_resource.state, town_id: @food_resource.town_id, verified: @food_resource.verified, zip_code: @food_resource.zip_code, user_id: @food_resource.user_id } }
    assert_redirected_to food_resource_url(@food_resource)
  end

  test "should destroy food_resource" do
    assert_difference("FoodResource.count", -1) do
      delete food_resource_url(@food_resource)
    end

    assert_redirected_to food_resources_url
  end
end
