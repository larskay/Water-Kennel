feature "Owner & Information" do
  before do
    visit "/"
    click_link "Owners"
  end

  scenario "C - reate new owner" do
    click_link "New Owner"
    fill_in "Name", with: "Example Owner"
    fill_in "Address", with: "Example Address"
    fill_in "Tlf", with: "51515151"
    fill_in "Mobile", with: "98430315"

    click_button "Save Owner"
    expect(page).to have_content("Owner created successfully")
  end

  scenario "R - ead owner infomation" do
  end
  scenario "U - pdate owner information" do
  end
  scenario "D - estroy owner information" do
  end
end
