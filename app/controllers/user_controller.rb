class UserController < ApplicationController
  def orders
    User.all_order_stuff
    head :ok
  end
end
