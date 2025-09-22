require "test_helper"

class LikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save without user_id" do
    like= Like.new
    assert_not like.save
  end

end
