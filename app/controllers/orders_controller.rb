class OrdersController < ApplicationController
  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # POST /orders
  # POST /orders.json
  def create
    # TODO
  end

  # Note this is a bad idea, in a real application please create a new Subscription model for recurring payments
  def subscribe
    # TODO
  end
end
