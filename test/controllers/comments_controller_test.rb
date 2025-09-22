require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comments_path
    assert_response :success
  end

  test "should get create" do
    get comments_path
    assert_difference(Comment.count, 1)
    assert_response :success
  end

  test "should get show" do
    get comment_path
    assert_response :success
  end
end
