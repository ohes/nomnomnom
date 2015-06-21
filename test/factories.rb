FactoryGirl.define do
	factory :user do
	    sequence :email do |n|
	      "ohes#{n}@gmail.com"
	    end
    	
    	password "omglolhahaha"
    	password_confirmation "omglolhahaha"
  	end

  	factory :place do
  		name "Sally's Middle Name"
  		address "1320 H St NE, Washington DC 20002"
  		description "a welcome addition to the neighborhood"
  		association :user
  	end

	factory :comment do
		message "Horrible restaurant"
		rating "1_star"
		association :place
		association :user
	end
end

