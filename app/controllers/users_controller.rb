class UsersController < ApplicationController
  before_filter :find_user, :only => :show


  def show

    @post = Post.new
    @posts = current_user.posts
  end



  def find_user
    @user = User.find(params[:id])
  end

end
