class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    if params[:query]
      @dresses = Dress.search(params[:query])
    else
      @dresses = Dress.all
    end
  end
end
