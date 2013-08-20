class Owner < ActiveRecord::Base
  has_many :treatments, dependent: :destroy
  has_many :dogs, dependent: :destroy

  validates :name, :mobile, presence: true
end
