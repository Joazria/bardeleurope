class DrinksController < ApplicationController
    before_action :set_drink, only: [:show, :edit, :update, :destroy]
    skip_before_action :authenticate_user!, only: [:index]

  def index
      @drinks = Drink.all
  end

  def show
    @drinks = Drink.all
  end

  def new
    @drink = Drink.new
  end

  def edit
  end

  def create
    @drink = Drink.new(drink_params)
    @drink.user = current_user

    if @drink.save
      redirect_to @drink, notice: "Drink créé! Tu picoles trop."
    else
      render :new
    end
  end

  def update
    if @drink.update(drink_params)
      redirect_to @drink, notice: "Drink updated! T'as pensé á rajouté du rhum."
    else
      render :edit
    end
  end

  def destroy
    @drink.destroy
    redirect_to root_path, notice: "Drink détruit! T'as la gueule de bois."
  end

  private

  def set_drink
    @drink = Drink.find(params[:id])
  end

  def drink_params
  params.require(:drink).permit(:category, :name, :description, :price, :cl, :subcat, :photo)
  end
end

