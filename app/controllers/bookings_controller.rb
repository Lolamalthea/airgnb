class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def create
    booking_hash = booking_params
    booking_hash[:start_date_on] = Date.strptime(booking_hash[:start_date_on], "%m/%d/%Y")
    booking_hash[:end_date_on] = Date.strptime(booking_hash[:end_date_on], "%m/%d/%Y")
    @booking = Booking.new(booking_hash)
    @weapon = Weapon.find(params[:weapon_id])
    @booking.weapon = @weapon
    @booking.user = current_user
    if @booking.save
      redirect_to user_bookings_path
    else
      render 'weapons/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:weapon, :user, :start_date_on, :end_date_on)
  end
end
