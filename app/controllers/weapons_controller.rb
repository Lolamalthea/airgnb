class WeaponsController < ApplicationController

  before_action :set_weapon, only: [:show, :edit, :update, :destroy]
  skip_before_action :weapons, only: :index

  def index
    @category = Weapon::CATEGORIES[(params[:category].to_i) - 1]
    @from = params[:from]
    @to = params[:to]
    @address = params[:address]
    if @category == 'Any stuff available'
      if @address == ''
        @weapons = Weapon.all
      else
        @weapons = Weapon.near(@address, 1000)
      end
    else
      if @address == ''
        @weapons = Weapon.where("category = ?", @category)
      else
        @weapons = Weapon.where("category = ?", @category).near(@address, 1000)
      end
    end
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
  params.require(:weapon).permit(:name, :category, :description, :address, :price, :picture, :picture_cache, :availability_start_on, :availability_end_on, :longitude, :latitude)
  end
end
