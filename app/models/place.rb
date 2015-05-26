class Place < ActiveRecord::Base
	belongs_to :user
	validates :name, :presence => true, length: { 
		minimum: 3,
		too_short: "name must have at least 3 characters"
	}
	validates :address, :presence => true
	validates :description, :presence => true

end
