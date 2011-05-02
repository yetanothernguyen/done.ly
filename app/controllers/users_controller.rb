class UsersController < ApplicationController
  before_filter :find_user, :only => :show


  def show

    @post = Post.new
    @posts_by_days = current_user.posts.by_date.group_by(&:date)
  end



  def find_user
    @user = User.find(params[:id])
  end

end
