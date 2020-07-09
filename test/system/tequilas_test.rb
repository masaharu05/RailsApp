require "application_system_test_case"

class TequilasTest < ApplicationSystemTestCase
  setup do
    @tequila = tequilas(:one)
  end

  test "visiting the index" do
    visit tequilas_url
    assert_selector "h1", text: "Tequilas"
  end

  test "creating a Tequila" do
    visit tequilas_url
    click_on "New Tequila"

    fill_in "Memo", with: @tequila.memo
    fill_in "Name", with: @tequila.name
    click_on "Create Tequila"

    assert_text "Tequila was successfully created"
    click_on "Back"
  end

  test "updating a Tequila" do
    visit tequilas_url
    click_on "Edit", match: :first

    fill_in "Memo", with: @tequila.memo
    fill_in "Name", with: @tequila.name
    click_on "Update Tequila"

    assert_text "Tequila was successfully updated"
    click_on "Back"
  end

  test "destroying a Tequila" do
    visit tequilas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tequila was successfully destroyed"
  end
end
