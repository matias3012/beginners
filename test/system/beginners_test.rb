require "application_system_test_case"

class BeginnersTest < ApplicationSystemTestCase
  setup do
    @beginner = beginners(:one)
  end

  test "visiting the index" do
    visit beginners_url
    assert_selector "h1", text: "Beginners"
  end

  test "creating a Beginner" do
    visit beginners_url
    click_on "New Beginner"

    fill_in "Author", with: @beginner.author
    fill_in "Element", with: @beginner.element
    fill_in "Title", with: @beginner.title
    click_on "Create Beginner"

    assert_text "Beginner was successfully created"
    click_on "Back"
  end

  test "updating a Beginner" do
    visit beginners_url
    click_on "Edit", match: :first

    fill_in "Author", with: @beginner.author
    fill_in "Element", with: @beginner.element
    fill_in "Title", with: @beginner.title
    click_on "Update Beginner"

    assert_text "Beginner was successfully updated"
    click_on "Back"
  end

  test "destroying a Beginner" do
    visit beginners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beginner was successfully destroyed"
  end
end
