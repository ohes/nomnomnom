class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :place
	after_create :send_comment_email

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

	def send_comment_email
		NotificationMailer.comment_added(self).deliver
	end
end
