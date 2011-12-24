class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @post = Post.new
    @posts_by_days = @user.posts.by_date.group_by(&:date)
  end

end
