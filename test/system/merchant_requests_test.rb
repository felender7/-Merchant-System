require "application_system_test_case"

class MerchantRequestsTest < ApplicationSystemTestCase
  setup do
    @merchant_request = merchant_requests(:one)
  end

  test "visiting the index" do
    visit merchant_requests_url
    assert_selector "h1", text: "Merchant Requests"
  end

  test "creating a Merchant request" do
    visit merchant_requests_url
    click_on "New Merchant Request"

    fill_in "Merchant type", with: @merchant_request.merchant_type
    fill_in "Quantity", with: @merchant_request.quantity
    fill_in "Slug", with: @merchant_request.slug
    click_on "Create Merchant request"

    assert_text "Merchant request was successfully created"
    click_on "Back"
  end

  test "updating a Merchant request" do
    visit merchant_requests_url
    click_on "Edit", match: :first

    fill_in "Merchant type", with: @merchant_request.merchant_type
    fill_in "Quantity", with: @merchant_request.quantity
    fill_in "Slug", with: @merchant_request.slug
    click_on "Update Merchant request"

    assert_text "Merchant request was successfully updated"
    click_on "Back"
  end

  test "destroying a Merchant request" do
    visit merchant_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Merchant request was successfully destroyed"
  end
end
