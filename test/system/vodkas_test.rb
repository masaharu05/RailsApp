require "application_system_test_case"

class VodkasTest < ApplicationSystemTestCase
  setup do
    @vodka = vodkas(:one)
  end

  test "visiting the index" do
    visit vodkas_url
    assert_selector "h1", text: "Vodkas"
  end

  test "creating a Vodka" do
    visit vodkas_url
    click_on "New Vodka"

    fill_in "Memo", with: @vodka.memo
    fill_in "Name", with: @vodka.name
    click_on "Create Vodka"

    assert_text "Vodka was successfully created"
    click_on "Back"
  end

  test "updating a Vodka" do
    visit vodkas_url
    click_on "Edit", match: :first

    fill_in "Memo", with: @vodka.memo
    fill_in "Name", with: @vodka.name
    click_on "Update Vodka"

    assert_text "Vodka was successfully updated"
    click_on "Back"
  end

  test "destroying a Vodka" do
    visit vodkas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vodka was successfully destroyed"
  end
end
