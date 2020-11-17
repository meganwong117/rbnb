class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  # def new
  #   @booking = Booking.new
  # end

  # def create
  # end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  def booking_params
    params.require(:booking).permit(:dress_id, :user_id, :created_date, :end_date)
  end
end
