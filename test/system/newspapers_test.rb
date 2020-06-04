require "application_system_test_case"

class NewspapersTest < ApplicationSystemTestCase
  setup do
    @newspaper = newspapers(:one)
  end

  test "visiting the index" do
    visit newspapers_url
    assert_selector "h1", text: "Newspapers"
  end

  test "creating a Newspaper" do
    visit newspapers_url
    click_on "New Newspaper"

    fill_in "City press", with: @newspaper.city_press
    fill_in "Daily sun", with: @newspaper.daily_sun
    fill_in "Quantity", with: @newspaper.quantity
    fill_in "Slug", with: @newspaper.slug
    fill_in "Soccer laduma", with: @newspaper.soccer_laduma
    fill_in "Sunday sun", with: @newspaper.sunday_sun
    click_on "Create Newspaper"

    assert_text "Newspaper was successfully created"
    click_on "Back"
  end

  test "updating a Newspaper" do
    visit newspapers_url
    click_on "Edit", match: :first

    fill_in "City press", with: @newspaper.city_press
    fill_in "Daily sun", with: @newspaper.daily_sun
    fill_in "Quantity", with: @newspaper.quantity
    fill_in "Slug", with: @newspaper.slug
    fill_in "Soccer laduma", with: @newspaper.soccer_laduma
    fill_in "Sunday sun", with: @newspaper.sunday_sun
    click_on "Update Newspaper"

    assert_text "Newspaper was successfully updated"
    click_on "Back"
  end

  test "destroying a Newspaper" do
    visit newspapers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newspaper was successfully destroyed"
  end
end
