require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  # testing that user dashboard for the user loads properly
  test "user dashboard" do
    # setup
    user = FactoryGirl.create(:user)
    sign_in user

    # trigger
    get :show, :id => user.id

    # verify
    assert_response :success
  end
end
