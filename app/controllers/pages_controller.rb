class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @dresses = Dress.all
  end
end
