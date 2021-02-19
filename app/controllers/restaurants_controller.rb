class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(strong_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end

  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @review = Review.new
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def strong_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
