class PostsController < ApplicationController
  before_action :set_post, only %i[show edit]

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
    if @post.save
      redirect_to @post
    else
      render :new
    end

  def destroy
    @post.destroy
    redirect_to posts_index_path
  end

  def update
    @post.update
    redirect_to @post
  end

  private

  def post_params
    @post = Post.find(params[:id])
    params.require(:post.permit(:currency, :ease, :user_id))
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
