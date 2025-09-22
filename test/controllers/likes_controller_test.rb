require "test_helper"

class LikesControllerTest < ActionDispatch::IntegrationTest


  test "should get create" do
    get likes_path
    assert_difference(Like.count, 1)
    assert_response :success
  end


end
