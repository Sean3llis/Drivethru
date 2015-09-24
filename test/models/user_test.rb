require 'test_helper'

class UserTest < ActiveSupport::TestCase

	def setup
		@user = User.new(name: "Bob", email: "bob@bobmail.com")
	end
  test "email isn't blank" do
  	@user.email = "    "
    assert_not @user.valid?
  end
end
