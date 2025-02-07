require "application_system_test_case"

class FoodResourcesTest < ApplicationSystemTestCase
  setup do
    @food_resource = food_resources(:one)
  end

  test "visiting the index" do
    visit food_resources_url
    assert_selector "h1", text: "Food resources"
  end

  test "should create food resource" do
    visit food_resources_url
    click_on "New food resource"

    fill_in "Address line1", with: @food_resource.address_line1
    fill_in "Address line2", with: @food_resource.address_line2
    fill_in "City", with: @food_resource.city
    fill_in "Additional info", with: @food_resource.additional_info
    fill_in "Contact", with: @food_resource.contact
    fill_in "Name", with: @food_resource.name
    fill_in "Phone number", with: @food_resource.phone_number
    fill_in "State", with: @food_resource.state
    fill_in "Town", with: @food_resource.town_id
    check "Verified" if @food_resource.verified
    fill_in "Zip code", with: @food_resource.zip_code
    click_on "Create Food resource"

    assert_text "Food resource was successfully created"
    click_on "Back"
  end

  test "should update Food resource" do
    visit food_resource_url(@food_resource)
    click_on "Edit this food resource", match: :first

    fill_in "Address line1", with: @food_resource.address_line1
    fill_in "Address line2", with: @food_resource.address_line2
    fill_in "City", with: @food_resource.city
    fill_in "Additional info", with: @food_resource.additional_info
    fill_in "Contact", with: @food_resource.contact
    fill_in "Name", with: @food_resource.name
    fill_in "Phone number", with: @food_resource.phone_number
    fill_in "State", with: @food_resource.state
    fill_in "Town", with: @food_resource.town_id
    check "Verified" if @food_resource.verified
    fill_in "Zip code", with: @food_resource.zip_code
    click_on "Update Food resource"

    assert_text "Food resource was successfully updated"
    click_on "Back"
  end

  test "should destroy Food resource" do
    visit food_resource_url(@food_resource)
    click_on "Destroy this food resource", match: :first

    assert_text "Food resource was successfully destroyed"
  end
end
