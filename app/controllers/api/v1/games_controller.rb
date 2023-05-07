class Api::V1::GamesController < ApplicationController
  before_action :set_api_v1_game, only: %i[ show update destroy ]

  # GET /api/v1/games
  def index
    @api_v1_games = Api::V1::Game.all

    render json: @api_v1_games
  end

  # GET /api/v1/games/1
  def show
    render json: @api_v1_game
  end

  # POST /api/v1/games
  def create
    @api_v1_game = Api::V1::Game.new(api_v1_game_params)

    if @api_v1_game.save
      render json: @api_v1_game, status: :created, location: @api_v1_game
    else
      render json: @api_v1_game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/games/1
  def update
    if @api_v1_game.update(api_v1_game_params)
      render json: @api_v1_game
    else
      render json: @api_v1_game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/games/1
  def destroy
    @api_v1_game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_game
      @api_v1_game = Api::V1::Game.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_game_params
      params.fetch(:api_v1_game, {})
    end
end
