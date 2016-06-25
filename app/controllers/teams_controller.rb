class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :update, :destroy]
  before_action :authenticate_user!
  # GET championships/:id/teams
  # GET championships/:id/teams.json
  def index
    @championship = Championship.find(params[:championship_id])
    @teams = @championship.teams

    render json: @teams.as_json(include: [:championship])
  end

  # GET championships/:id/teams/1
  # GET championships/:id/teams/1.json
  def show
    render json: @team
  end

  # POST championships/:id/teams
  # POST championships/:id/teams.json
  def create
    @team = Team.new(team_params)

    if @team.save
      render json: @team, status: :created, location: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT championships/:id/teams/1
  # PATCH/PUT championships/:id/teams/1.json
  def update
    @team = Team.find(params[:id])

    if @team.update(team_params)
      head :no_content
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # DELETE championships/:id/teams/1
  # DELETE championships/:id/teams/1.json
  def destroy
    @team.destroy

    head :no_content
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name)
  end
end
