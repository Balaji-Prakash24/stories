require "test_helper"

class StoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stories_path
    assert_response :success
  end

  test "should get create" do
    get stories_path
    assert_difference(Story.count, 1)
    assert_response :success
  end

  test "should get show" do
    get story_path
    assert_response :success
  end
end
