class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :destroy]
  before_action :set_user, only: [:create, :new, :edit, :update]

  def show
  end

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @user = current.user #somente o dono do post poderá cria-lo
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  def update
    if @post.update
      redirect_to @post
    else
      render :new
    end
  end

  private

  def post_params
    @post = Post.find(params[:id])
    params.require(:post.permit(:amount, :currency, :ease, :user_id))
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def set_user
    @user = current_user
  end
end
