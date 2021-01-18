class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new 

  end

  def create 
    # * create a new object
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end
  
end
