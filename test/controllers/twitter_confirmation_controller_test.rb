require 'test_helper'

class TwitterConfirmationControllerTest < ActionController::TestCase
  test "should get confirm_twitter_email" do
    get :confirm_twitter_email
    assert_response :success
  end

  test "should get send_confirm" do
    get :send_confirm
    assert_response :success
  end

end
