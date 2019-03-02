require "application_system_test_case"

class RespondsTest < ApplicationSystemTestCase
  setup do
    @respond = responds(:one)
  end

  test "visiting the index" do
    visit responds_url
    assert_selector "h1", text: "Responds"
  end

  test "creating a Respond" do
    visit responds_url
    click_on "New Respond"

    fill_in "Contact", with: @respond.contact_id
    fill_in "Deal", with: @respond.deal
    fill_in "Point", with: @respond.point
    fill_in "Respond date", with: @respond.respond_date
    fill_in "Staff", with: @respond.staff
    fill_in "Title", with: @respond.title
    fill_in "Wording", with: @respond.wording
    click_on "Create Respond"

    assert_text "Respond was successfully created"
    click_on "Back"
  end

  test "updating a Respond" do
    visit responds_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @respond.contact_id
    fill_in "Deal", with: @respond.deal
    fill_in "Point", with: @respond.point
    fill_in "Respond date", with: @respond.respond_date
    fill_in "Staff", with: @respond.staff
    fill_in "Title", with: @respond.title
    fill_in "Wording", with: @respond.wording
    click_on "Update Respond"

    assert_text "Respond was successfully updated"
    click_on "Back"
  end

  test "destroying a Respond" do
    visit responds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Respond was successfully destroyed"
  end
end
