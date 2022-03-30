class Api::PlayersController < ApplicationController

  before_action :set_player, only: [:show, :update, :destroy]

  def index
    render json: Player.all
  end

  def create
    @player = Player.new(player_params)
    if(@player.save)
      render json: @player
    else
      render json: @player.errors, status 422
    end
  end

  def show
    render json: @player
  end

  def update
    if(@player.update(player_params))
      render json: @player
    else 
      render json: @player.errors, status: 422
    end
  end

  def destroy
    render json: @player.destroy
  end

  private

  def player_params
    params.require(:player).permit(:name, :cc, :range, :char, :focus, :madness, :health)
  end

  def set_player
    @player = Player.find(params[:id])
  end
end
