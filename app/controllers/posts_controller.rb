class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:create, :new, :edit, :update]


  def index
    @posts = policy_scope(Post).order(created_at: :desc)
  end

  def show
    @order = Order.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    authorize @post
    @post.user = current_user
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def edit
  end

  def update
    authorize @post
    if @post.update(post_params)
      redirect_to @post
    else
      render :new
    end
  end

  def destroy
    if (post.updated_at + post.valid) >= Date.time
      @post.destroy
    end
    @post.destroy
    redirect_to posts_path
  end

    private

  def post_params
    params.require(:post).permit(:amount, :currency_id, :ease, :user_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def set_user
    @user = current_user
  end
end
