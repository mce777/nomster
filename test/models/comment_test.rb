require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "humanized ratings" do
    # setup
    comment = Comment.new(:rating => '1_star').humanized_rating
    
    # trigger
    expected = 'one star'
    actual = comment
    
    # verify
    assert_equal expected, actual
    
  end
end
