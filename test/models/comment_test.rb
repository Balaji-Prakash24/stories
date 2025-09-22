require "test_helper"

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save without user name" do
    comment= Comment.new
    assert_not comment.save
  end

  test "should not save without description" do
    comment= Comment.new
    assert_not comment.save
  end

  test "should not save without user_id" do
    comment= Comment.new
    assert_not comment.save
  end

end
