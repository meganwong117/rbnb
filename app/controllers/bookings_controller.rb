class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @dress = Dress.find(params[:dress_id])
    @booking.dress = @dress
    @booking.save
    redirect_to dress_path(@dress)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:created_date, :end_date)
  end
end
