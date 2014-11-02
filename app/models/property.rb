class Property < ActiveRecord::Base
  attr_accessible :address, :base_rent_per_hour, :base_value, :coords, :level, :name, :owner_id

  belongs_to :owner, class_name: 'User'
end
