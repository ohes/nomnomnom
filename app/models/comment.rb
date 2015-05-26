class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :place

	RATINGS = {
		'one star'=> '1_star',
		'two stars' =>'2_stars',
		'three stars' => '3 stars',
		'four stars' => '4 stars',
		'five stars' => '5 stars'
	}

	def humanized_rating
		RATINGS.invert[self.rating]
	end
end
