class PostsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post].merge({:user_id => current_user.id}))
    @post.save
  end

  def update
  end

  def delete
  end

end
