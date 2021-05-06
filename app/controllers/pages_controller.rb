class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :dashboard, :drinks, :beers, :softs, :chauds, :cafefroids, :jusfrais, :alcool, :cocktails, :vins, :aperitif, :liqueur]
  before_action :set_drinks, only: [:home, :dashboard, :drinks, :beers, :softs, :chauds, :cafesfroids, :jusfrais, :alcool, :cocktails, :vins, :aperitif, :liqueur]

  def home
    # if params[:query].present?
    #   @drinks = Drink.search_by_name(params[:query])
    # else
      # @drinks = Drink.all
    # end
  end

  def dashboard
    # @drinks = Drink.search_by_name(params[:query])
  end

  private

  def set_drinks
    @drinks = Drink.all
  end
end
