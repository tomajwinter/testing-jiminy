require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "creates a user with a first name" do
    assert User.create(first_name: 'Nope')
  end
end
