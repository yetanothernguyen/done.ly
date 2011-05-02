class VotesController < ApplicationController

def create
  
  puts params[:vote].inspect
  @vote = Vote.create(params[:vote])
  
  redirect_to user_path(@vote.post.user)
end

end
