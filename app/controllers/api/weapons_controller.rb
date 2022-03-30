class Api::WeaponsController < ApplicationController
  before_action :set_knight
  before_action :set_weapon, only: [:show, :update, :destroy]

  def index
    render json: @knight.weapons.all
  end

  def show
    render json: @weapon
  end

  def create
    @weapon = weapon.new(weapon_params)
    if(@weapon.save)
      render json: @weapon
    else
      render json: @weapon.errors, status: 422
    end
  end

  def update
    if(@weapon.update(weapon_params))
      render json: @weapon
    else
      render json: @weapon.errors, status: 422
    end
  end

  def destroy
    render json: @weapon.destroy
  end

  private

  def set_knight
    @knight = knight.find(params[:knight_id])
  end

  def set_weapon
    @weapon = weapon.find(params[:id])
  end

  def weapon_params
    params.require(:weapon).permit(:name, :subtype, :ammo, :wear)
  end
end
