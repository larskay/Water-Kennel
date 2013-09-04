class Dog < ActiveRecord::Base
  has_many :treatments
  has_one :owner
  accepts_nested_attributes_for :owner
  
  mount_uploader :photo, PhotoUploader
  validates :nickname, :name, :race, :born, :presence => true
end
