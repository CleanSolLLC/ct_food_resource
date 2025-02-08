require "test_helper"

class CountiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @county = counties(:one)

    post session_path, params: {
      email_address: @user.email_address,
      password: "password"
    }
  end

  test "should get index" do
    get counties_url
    assert_response :success
  end

  test "should get food_pantries" do
    get food_pantries_county_url(@county)
    @county.towns.each do |town|
      get food_pantries_url(town)
      assert_response :success
    end
  end
end
