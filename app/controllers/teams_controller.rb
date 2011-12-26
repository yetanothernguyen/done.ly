class TeamsController < ApplicationController
  # GET /teams
  # GET /teams.xml
  def index
    @teams = current_user.teams if current_user
    invite_tokens = Utils.get_invite_tokens(cookies)
    invite_tokens.delete_if { |token| @teams.index { |team| team.invite_token == token } != nil }
    @pending_teams = Team.find_all_by_invite_token(invite_tokens)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @teams }
    end
  end

  # GET /teams/1
  # GET /teams/1.xml
  def show
    @team = Team.find(params[:id])
    @posts_by_days = Post.by_team(@team).by_date.group_by(&:date) # refactor to support multiple teams
    @members = @team.members

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @team }
      format.rss  { render :layout => false }
    end
  end

  # GET /teams/new
  # GET /teams/new.xml
  def new
    @team = Team.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @team }
    end
  end

  # GET /teams/1/edit
  def edit
    @team = Team.find(params[:id])
  end

  # POST /teams
  # POST /teams.xml
  def create
    @team = current_user.created_teams.new(params[:team])

    respond_to do |format|
      if @team.save
        format.html { redirect_to(@team, :notice => 'Team was successfully created.') }
        format.xml  { render :xml => @team, :status => :created, :location => @team }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @team.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /teams/1
  # PUT /teams/1.xml
  def update
    @team = Team.find(params[:id])

    respond_to do |format|
      if @team.update_attributes(params[:team])
        format.html { redirect_to(@team, :notice => 'Team was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @team.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.xml
  def destroy
    @team = Team.find(params[:id])
    @team.destroy

    respond_to do |format|
      format.html { redirect_to(teams_url) }
      format.xml  { head :ok }
    end
  end

  def join
    @team = Team.find(params[:id])
    current_user.teams << @team
    current_user.save

    Utils.remove_invite_token(@team.invite_token, cookies)

    redirect_to teams_path
  end
end
