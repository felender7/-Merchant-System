require "application_system_test_case"

class DetailsTest < ApplicationSystemTestCase
  setup do
    @detail = details(:one)
  end

  test "visiting the index" do
    visit details_url
    assert_selector "h1", text: "Details"
  end

  test "creating a Detail" do
    visit details_url
    click_on "New Detail"

    fill_in "Address 1", with: @detail.address_1
    fill_in "Address 2", with: @detail.address_2
    fill_in "Address 3", with: @detail.address_3
    fill_in "Email", with: @detail.email
    fill_in "Phone", with: @detail.phone
    fill_in "Shop name", with: @detail.shop_name
    click_on "Create Detail"

    assert_text "Detail was successfully created"
    click_on "Back"
  end

  test "updating a Detail" do
    visit details_url
    click_on "Edit", match: :first

    fill_in "Address 1", with: @detail.address_1
    fill_in "Address 2", with: @detail.address_2
    fill_in "Address 3", with: @detail.address_3
    fill_in "Email", with: @detail.email
    fill_in "Phone", with: @detail.phone
    fill_in "Shop name", with: @detail.shop_name
    click_on "Update Detail"

    assert_text "Detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Detail" do
    visit details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detail was successfully destroyed"
  end
end
