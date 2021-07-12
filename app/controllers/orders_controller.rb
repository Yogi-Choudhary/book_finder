class OrdersController < ApplicationController

  def new
    @order = Order.new
    @book = Book.find(params[:book_id])
  end

  def create
    @order = Order.new(order_params)
  end
end
