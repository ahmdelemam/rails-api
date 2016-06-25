class ChampionshipsController < ApplicationController
  before_action :set_championship, only: [:show, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /championships
  # GET /championships.json
  def index
    @championships = Championship.all

    render json: @championships
  end

  # GET /championships/1
  # GET /championships/1.json
  def show
    render json: @championship
  end

  # POST /championships
  # POST /championships.json
  def create
    @championship = Championship.new(championship_params.merge(user: current_user))

    if @championship.save
      render json: @championship, status: :created, location: @championship
    else
      render json: @championship.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /championships/1
  # PATCH/PUT /championships/1.json
  def update
    @championship = Championship.find(params[:id])

    if @championship.update(championship_params.merge(user: current_user))
      head :no_content
    else
      render json: @championship.errors, status: :unprocessable_entity
    end
  end

  # DELETE /championships/1
  # DELETE /championships/1.json
  def destroy
    @championship.destroy

    head :no_content
  end

  private

    def set_championship
      @championship = Championship.find(params[:id])
    end

    def championship_params
      params.require(:championship).permit(:name,:user_id)
    end
end
