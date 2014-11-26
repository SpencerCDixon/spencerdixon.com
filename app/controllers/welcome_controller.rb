class WelcomeController < ApplicationController
  def index
    if params[:tag]
      @posts = Tag.find_by(name: params[:tag]).posts
    else
      @posts = Post.all
    end
    @tags = Tag.all
  end

  def show
    @post = Post.find(params[:format])
  end
end
