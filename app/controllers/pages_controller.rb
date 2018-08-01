class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @posts = Post.last(5)
  end
end
