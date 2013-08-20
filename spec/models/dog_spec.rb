require "spec_helper"

describe Dog do
  context "validation for dogs" do
    it "should not save without a name, race or birthday" do
      lambda do
        dog = Dog.create(:nickname => "black", :race => "porto", :allergies => "gluten")
        dog.save
      end.should change(Dog, :count).by(0)
    end

    it "should save dog and change count + 1" do
      lambda do
        dog = Dog.create(:name => "Harley", :nickname => "black", :race => "porto", :allergies => "gluten", :born => "01.01.2000")
        dog.save
      end.should change(Dog, :count).by(1)
    end
  end
end
