class FoodsController < ApplicationController
    before_action :set_food, only: [:show, :edit, :update, :destroy]
    skip_before_action :authenticate_user!, only: [:index, :show]

  def index
      @foods = Food.all
  end

  def show
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def edit
  end

  def create
    @food = Food.new(food_params)
    @food.user = current_user

    if @food.save
      redirect_to @food, notice: "Plat créé! Mmmmh J'adore les Donuts á la mayonnaise."
    else
      render :new
    end
  end

  def update
    if @food.update(drink_params)
      redirect_to @food, notice: "Plat updated! De la sardine avec du sanglier au beur de cacahuéte? t'es sur de ton coup."
    else
      render :edit
    end
  end

  def destroy
    @food.destroy
    redirect_to root_path, notice: "Food détruit! Les plats diets c'est pas bon."
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
  params.require(:food).permit(:category, :name, :description, :price, :photo)
  end
end
