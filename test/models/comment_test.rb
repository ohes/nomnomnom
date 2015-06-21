require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "humanized_rating" do
  	comment = FactoryGirl.create(:comment)
  	place = FactoryGirl.create(:place)
  	user = FactoryGirl.create(:user)
  	expected = "one star"
  	actual = comment.humanized_rating
  	assert_equal expected, actual
  end
  
end
