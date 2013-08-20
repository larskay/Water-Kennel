class Dog < ActiveRecord::Base
  has_many :treatments

  mount_uploader :photo, PhotoUploader
  validates :name, :race, :born, :presence => true
end
