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
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render "dresses/show"
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)

    redirect_to bookings_path
  end
  
  def destroy
    @booking = Booking.find(params[:id])
    @booking.delete
    redirect_to bookings_path
  end

  def booking_params
    params.require(:booking).permit( :created_date, :end_date)
  end
end
