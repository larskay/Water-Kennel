class Owner < ActiveRecord::Base

  validates :name, :mobile, presence: true
end
