class InvitesController < ApplicationController

  def show
    session["devise.invite_token"] = params[:id]
    @team = Team.find_by_invite_token(params[:id])
    @members = @team.members
  end
end
