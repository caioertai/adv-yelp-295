class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :chef]

  def index
    @restaurants = Restaurant.all
  end

  def top
    @restaurants = Restaurant.where(stars: 5)
  end

  def show
  end

  def chef
    @chef_name = @restaurant.chef
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def update
    # set restaurant
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_url
  end

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :description, :stars)
    end
end
