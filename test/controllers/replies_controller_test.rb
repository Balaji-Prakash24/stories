require "test_helper"

class RepliesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get replies_path
    assert_response :success
  end

  test "should get create" do
    get replies_path
    assert_difference(Reply.count, 1)
    assert_response :success
  end

  test "should get show" do
    get replies_show_url
    assert_response :success
  end
end
