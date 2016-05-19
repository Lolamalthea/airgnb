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
    @markers = Gmaps4rails.build_markers(@weapons) do |weapon, marker|
      marker.lat weapon.latitude
      marker.lng weapon.longitude
      marker.infowindow render_to_string(:partial => "/weapons/infowindow", :locals => { :weapon => weapon })
      marker.title "#{weapon.name}"

    end
    # @json = @weapons.to_gmaps4rails do |weapon, marker|
    #   marker.json({ :name => weapon.name})
    # end
  end

  def show
    @booking = Booking.new
    @from = params[:from]
    @to = params[:to]
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
