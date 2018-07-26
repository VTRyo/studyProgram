require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Examlple User", email: "user@example.com")
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "name should be peresent" do
    @user.name = "    "
    assert_not @user.valid?
  end
end
