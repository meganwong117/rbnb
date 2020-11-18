class DressesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_dress, only: [:show, :edit]
  def index
    @dresses = Dress.all
  end

  def new
    @dress = Dress.new
  end

  def create
    @dress = Dress.new(dress_params)
    @dress.user = current_user
    if @dress.save
      redirect_to dress_path(@dress)
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
  end

  def edit
  end

  def update
    @dress = Dress.find(params[:id])
    @dress.update(dress_params)
    redirect_to dress_path(@dress)
  end

  def destroy
    @dress.destroy
    redirect_to dresses_path
  end

  private

  def set_dress
    @dress = Dress.find(params[:id])
  end

  def dress_params
    params.require(:dress).permit(:name, :description, :price, :size, :retail_price, :currency, :event_type, photos: [])
  end
end
