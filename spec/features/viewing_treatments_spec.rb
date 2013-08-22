require 'spec_helper'

feature "Viewing treatments" do
  before do
    Haily = FactoryGirl.create(:dog)
    FactoryGirl.create(:treatment)

    Harley = FactoryGirl.create(:dog)
    FactoryGirl.create(:treatment)
  end
end
