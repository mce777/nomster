require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "add comment" do
    # setup
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place)
    comment = FactoryGirl.create(:comment)

    # trigger
    assert_difference 'Comment.count' do
      post :create, 
      	:place_id => place.id,
        :comment => {
        	:message =>  comment.message,
          	:rating => comment.rating,
        }    
	end
    
    # verify
    assert_redirected_to place_path(place)
	
	assert_equal 1, user.comments.count
  end
end
