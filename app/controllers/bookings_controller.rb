class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @end_date_on = booking_params
    @booking = Booking.new (booking_params)
    @weapon = Weapon.find(params[:weapon_id])
    @booking.weapon = @weapon
    @booking.user = current_user
    if @booking.save
      redirect_to user_bookings_path(user: current_user)
    else
      render 'weapons/show'
    end
  end

  private

  def booking_params
    params.require(@booking).permit(:weapon, :user, :start_date_on, :end_date_on, :price_paid)
  end
end
