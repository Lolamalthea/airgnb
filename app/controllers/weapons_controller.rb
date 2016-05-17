class WeaponsController < ApplicationController
  before_action :set_weapon, only: [:create, :edit, :update, :destroy]
  def index
    @weapons = Weapon.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @weapon = Weapon.new
  end

  def create
    @weapon = Weapon.new(weapon_params)
    @weapon.user = current_user
    @weapon.save
    redirect_to weapon_path(@weapon)
  end

  def edit
  end

  def update
    @weapon.update(weapon_params)
    redirect_to weapon_path(@weapon)
  end

  def destroy
    @weapon.delete
    redirect_to root_path
  end

  private

  def set_weapon
    @weapon = Weapon.find(params[:id])
  end

  def weapon_params
  params.require(@weapons).permit(:name, :description, :address, :price, :picture, :picture_cache, :availability_start_on, :availability_end_on, :longitude, :latitude)
  end
end
