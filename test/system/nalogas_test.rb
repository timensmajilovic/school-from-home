require "application_system_test_case"

class NalogasTest < ApplicationSystemTestCase
  setup do
    @naloga = nalogas(:one)
  end

  test "visiting the index" do
    visit nalogas_url
    assert_selector "h1", text: "Nalogas"
  end

  test "creating a Naloga" do
    visit nalogas_url
    click_on "New Naloga"

    fill_in "Start time", with: @naloga.start_time
    click_on "Create Naloga"

    assert_text "Naloga was successfully created"
    click_on "Back"
  end

  test "updating a Naloga" do
    visit nalogas_url
    click_on "Edit", match: :first

    fill_in "Start time", with: @naloga.start_time
    click_on "Update Naloga"

    assert_text "Naloga was successfully updated"
    click_on "Back"
  end

  test "destroying a Naloga" do
    visit nalogas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Naloga was successfully destroyed"
  end
end
