class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :drinks, :beers]

  def home
    # if params[:query].present?
    #   @drinks = Drink.search_by_name(params[:query])
    # else
      @drinks = Drink.all
    # end
  end

  def drinks
    @drinks = Drink.all
  end

  def beers
    @drinks = Drink.all
  end

  def profile
    @drinks = Drink.search_by_name(params[:query])
  end

end
