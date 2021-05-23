class IcecreamsController < ApplicationController
    before_action :set_icecream, only: [:show, :edit, :update, :destroy]
    skip_before_action :authenticate_user!, only: [:index, :show]

  def index
      @icecreams = Icecream.all
  end

  def show
    @icecreams = Icecream.all
  end

  def new
    @icecream = Icecream.new
  end

  def edit
  end

  def create
    @icecream = Icecream.new(icecream_params)
    @icecream.user = current_user

    if @icecream.save
      redirect_to icecreams_path, notice: "Glace créée! Mmmmh Une glace au concombre."
    else
      render :new
    end
  end

  def update
    if @icecream.update(drink_params)
      redirect_to @icecream, notice: "Glace updated! Forcément avec de la vodka c'est toujorus meilheurs."
    else
      render :edit
    end
  end

  def destroy
    @icecream.destroy
    redirect_to root_path, notice: "Glace détruite! La glace au concombre c'est pas bon."
  end

  private

  def set_icecream
    @icecream = Icecream.find(params[:id])
  end

  def icecream_params
  params.require(:icecream).permit(:category, :name, :description, :price, :photo)
  end
end
