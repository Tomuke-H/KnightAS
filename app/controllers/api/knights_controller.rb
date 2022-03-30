class Api::KnightsController < ApplicationController
  before_action :set_player
  before_action :set_knight, only: [:show, :update, :destroy]

  def index
    render json: @player.knights.all
  end

  def show
    render json: @knight
  end

  def create
    @knight = Knight.new(knight_params)
    if(@knight.save)
      render json: @knight
    else
      render json: @knight.errors, status: 422
    end
  end

  def update
    if(@knight.update(knight_params))
      render json: @knight
    else
      render json: @knight.errors, status: 422
    end
  end

  def destroy
    render json: @knight.destroy
  end

  private

  def set_player
    @player = Player.find(params[:player_id])
  end

  def set_knight
    @knight = Knight.find(params[:id])
  end

  def knight_params
    params.require(:knight).permit(:name, :frame, :body, :rarm, :larm, :lleg, :rleg, :shield, :core)
  end
  
end
