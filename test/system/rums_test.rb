require "application_system_test_case"

class RumsTest < ApplicationSystemTestCase
  setup do
    @rum = rums(:one)
  end

  test "visiting the index" do
    visit rums_url
    assert_selector "h1", text: "Rums"
  end

  test "creating a Rum" do
    visit rums_url
    click_on "New Rum"

    fill_in "Memo", with: @rum.memo
    fill_in "Name", with: @rum.name
    click_on "Create Rum"

    assert_text "Rum was successfully created"
    click_on "Back"
  end

  test "updating a Rum" do
    visit rums_url
    click_on "Edit", match: :first

    fill_in "Memo", with: @rum.memo
    fill_in "Name", with: @rum.name
    click_on "Update Rum"

    assert_text "Rum was successfully updated"
    click_on "Back"
  end

  test "destroying a Rum" do
    visit rums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rum was successfully destroyed"
  end
end
