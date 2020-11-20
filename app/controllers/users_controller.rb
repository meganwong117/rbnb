class UsersController < ApplicationController
#show page
  def show
    @user = current_user
    @dresses = @user.dresses
    @borrowed_dresses = @user.bookings
    @my_bookings = Booking.where(dress: @user.dresses)
    @pending_bookings = @user.incoming_bookings.where(status: "pending")
  end
end
