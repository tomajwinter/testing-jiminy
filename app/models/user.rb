class User < ApplicationRecord
  has_many :orders

  def self.all_order_stuff
    all.map do |user|
      user.orders.map { |order| order.description }
    end
  end
end
