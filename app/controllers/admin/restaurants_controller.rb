class Admin::RestaurantsController < ApplicationController
  def index
    # @restaurants = Restaurant.all
    @restaurants = current_user.restaurants # <=== More on this Monday
  end
end
