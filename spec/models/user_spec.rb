require "rails_helper"

describe User do
  it "does User.all_order_stuff" do
    user = User.create
    user_two = User.create
    [user, user_two].each do |user|
      5.times { |i| Order.create(user: user, description: "An order for #{i} stuff") }
    end

    User.all_order_stuff
  end
end
