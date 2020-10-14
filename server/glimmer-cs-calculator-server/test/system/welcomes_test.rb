require "application_system_test_case"

class WelcomesTest < ApplicationSystemTestCase
  setup do
    @welcome = welcomes(:one)
  end

  test "visiting the index" do
    visit welcomes_url
    assert_selector "h1", text: "Welcomes"
  end

  test "creating a Welcome" do
    visit welcomes_url
    click_on "New Welcome"

    click_on "Create Welcome"

    assert_text "Welcome was successfully created"
    click_on "Back"
  end

  test "updating a Welcome" do
    visit welcomes_url
    click_on "Edit", match: :first

    click_on "Update Welcome"

    assert_text "Welcome was successfully updated"
    click_on "Back"
  end

  test "destroying a Welcome" do
    visit welcomes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Welcome was successfully destroyed"
  end
end
