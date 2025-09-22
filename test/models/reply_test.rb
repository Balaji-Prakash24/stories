require "test_helper"

class ReplyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save without user name" do
    reply= Reply.new
    assert_not reply.save
  end

  test "should not save without description" do
    reply= Reply.new
    assert_not reply.save
  end

  test "should not save without user_id" do
    reply= Reply.new
    assert_not reply.save
  end

end
