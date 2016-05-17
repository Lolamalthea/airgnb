class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.save
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(@booking).permit(:weapon, :user, :start_date_on, :end_date_on, :price_paid)
  end
end
