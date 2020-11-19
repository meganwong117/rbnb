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
      redirect_to booking_path(@booking)
    else
      render "dresses/show"
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @dress = @booking.dress
    @user = @booking.user
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

  def approve
    @user = current_user
    @booking = Booking.find(params[:id])
    @booking.update(status: "approved")
    redirect_to user_path(@user)
  end

  def decline
    @user = current_user
    @booking = Booking.find(params[:id])
    @booking.update(status: "declined")
    redirect_to user_path(@user)
  end

  def booking_params
    params.require(:booking).permit(:created_date, :end_date)
  end
end
