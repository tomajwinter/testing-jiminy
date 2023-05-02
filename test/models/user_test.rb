require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "creates a user with a first name" do
    assert User.create(first_name: 'Nope')
  end

  test ".all_order_stuff" do
    user = User.create
    user_two = User.create
    [user, user_two].each do |user|
      5.times { |i| Order.create(user: user, description: "An order for #{i} stuff") }
    end

    User.all_order_stuff
  end
end
