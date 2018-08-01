class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    @post = Post.find(params[:post_id])
    @order.user = current_user
    @order.post = @post
    if @order.save
      @post.update(amount: (@post.amount - @order.amount))
      redirect_to @order
    else
      render 'posts/show'
    end
  end

  private

  def order_params
    params.require(:order).permit(:amount, :post_id, :user_id)
  end
end
