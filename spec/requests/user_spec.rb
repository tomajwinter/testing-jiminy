require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /orders" do
    it "returns http success" do
      user = User.create
      user_two = User.create
      [user, user_two].each do |user|
        5.times { |i| Order.create(user: user, description: "An order for #{i} stuff") }
      end

      get "/user/orders"
      expect(response).to have_http_status(:success)
    end
  end
end
