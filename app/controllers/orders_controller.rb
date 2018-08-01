class OrdersController < ApplicationController
  before_action :set_order, only: [:destroy]
  before_action :set_post, only: [:create]
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.post = @post
    if @order.save
      @post.update(amount: (@post.amount - @order.amount))
      redirect_to @order
    else
      render 'posts/show'
    end
  end

  def destroy
    if @order.destroy
      @post = @order.post
      @post.update(amount: (@post.amount + @order.amount))
      redirect_to @post
    else
      return
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

  def order_params
    params.require(:order).permit(:amount, :post_id, :user_id)
  end
end
