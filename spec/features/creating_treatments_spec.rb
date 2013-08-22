feature "Crud for treatments" do
  before do
    visit "/"
    click_link "Dogs"
    FactoryGirl.create(:dog)
    click_link "Haily"
  end

  scenario "Creating new treatment with valid information" do
    click_link "New Treatment"
    expect(page).to have_content("Date")
    expect(page).to have_content("Owner")
    expect(page).to have_content("Treatments")
    expect(page).to have_content("Full treatment")
    expect(page).to have_content("Bath")
    expect(page).to have_content("Dry")
    expect(page).to have_content("Ears")
    expect(page).to have_content("Price")

    page.check('full_treatment')
    page.check('bath')
    page.check('hair_dry')
    page.check('ears')
    page.check('form_cut')
  end
  scenario "Showing treatment" do

  end
  scenario "Showing treatments" do

  end
  scenario "Updating treatment" do

  end
  scenario "Destroying treatment" do

  end
end
