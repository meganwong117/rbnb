class UsersController < ApplicationController
#show page
  def show
    @user = User.find(params[:id])
    @dresses = @user.dresses
    @borrowed_dresses = @user.borrowed_dresses
  end
end
