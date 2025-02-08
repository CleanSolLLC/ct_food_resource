require "application_system_test_case"

class FoodPantriesTest < ApplicationSystemTestCase
  setup do
    @food_pantry = food_pantries(:one)
  end

  test "visiting the index" do
    visit food_pantrys_url
    assert_selector "h1", text: "Food pantries"
  end

  test "should create food pantry" do
    visit food_pantries_url
    click_on "New food pantry"

    fill_in "Address line1", with: @food_pantry.address_line1
    fill_in "Address line2", with: @food_pantry.address_line2
    fill_in "City", with: @food_pantry.city
    fill_in "Additional info", with: @food_pantry.additional_info
    fill_in "Contact", with: @food_pantry.contact
    fill_in "Name", with: @food_pantry.name
    fill_in "Phone number", with: @food_pantry.phone_number
    fill_in "State", with: @food_pantry.state
    fill_in "Town", with: @food_pantry.town_id
    check "Verified" if @food_pantry.verified
    fill_in "Zip code", with: @food_pantry.zip_code
    click_on "Create Food pantry"

    assert_text "Food pantry was successfully created"
    click_on "Back"
  end

  test "should update Food pantry" do
    visit food_pantry_url(@food_pantry)
    click_on "Edit this Food pantry", match: :first

    fill_in "Address line1", with: @food_pantry.address_line1
    fill_in "Address line2", with: @food_pantry.address_line2
    fill_in "City", with: @food_pantry.city
    fill_in "Additional info", with: @food_pantry.additional_info
    fill_in "Contact", with: @food_pantry.contact
    fill_in "Name", with: @food_pantry.name
    fill_in "Phone number", with: @food_pantry.phone_number
    fill_in "State", with: @food_pantry.state
    fill_in "Town", with: @food_pantry.town_id
    check "Verified" if @food_pantry.verified
    fill_in "Zip code", with: @food_pantry.zip_code
    click_on "Update Food pantry"

    assert_text "Food pantry was successfully updated"
    click_on "Back"
  end

  test "should destroy Food pantry" do
    visit food_pantry_url(@food_pantry)
    click_on "Destroy this Food pantry", match: :first

    assert_text "Food pantry was successfully destroyed"
  end
end
