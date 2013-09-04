class Owner < ActiveRecord::Base
	has_many :dogs
  	validates :name, :mobile, presence: true
end
