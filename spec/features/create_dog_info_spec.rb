require 'spec_helper'

feature "Create dog information" do

  before do
      visit "/"
      click_link "Dogs"
    end

  scenario "show dog information on page" do
      expect(page).to have_content("Nickname")
      expect(page).to have_content("Regnr")
      expect(page).to have_content("Allergies")
      expect(page).to have_content("Dogs Name")
      expect(page).to have_content("Born")
      expect(page).to have_content("IDtagged")
      expect(page).to have_content("Race")
  end

  scenario "create dog with correct information" do
    click_link "New Dog"
    expect(page).to have_content("Dogs Name")
    expect(page).to have_content("Nickname")

    fill_in "Dogs Name", with: "Roxy"
    fill_in "Nickname", with: "Example Nickname"
    fill_in "Regnr", with: "123456"
    fill_in "Allergies", with: "none"
    fill_in "Race", with: "Porto"
    fill_in "Born", with: "08/01/2013"
    click_button "Save"
    expect(page).to have_content("Dog was saved successfully")
  end

  scenario "create dog with wrong information" do
    click_link "New Dog"
    expect(page).to have_content("Dogs Name")
    expect(page).to have_content("Nickname")

    fill_in "Nickname", with: "Example Nickname"
    click_button "Save"
    expect(page).to have_content("prohibited this dogs from being saved")
  end
end
