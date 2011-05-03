class VotesController < ApplicationController

def create

  @vote = Vote.create(params[:vote])
  
  redirect_to user_path(@vote.post.user)
end

end
