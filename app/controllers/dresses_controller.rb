class DressesController < ApplicationController
  before_action :set_dress, only: :show
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
  end

  private

  def set_dress
    @dress = Dress.find(params[:id])
  end

  def dress_params
    params.require(:dress).permit(:name, :description, :price, :size, :event_type, photos: [])
  end
end
