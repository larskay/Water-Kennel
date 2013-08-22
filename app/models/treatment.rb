class Treatment < ActiveRecord::Base
  has_one :dog

  accepts_nested_attributes_for :dog
end
