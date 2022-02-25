class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home, :dashboard, :drinks, :beers, :softs, :chauds, :cafefroids, :jusfrais, :alcool, :cocktails, :vins, :aperitifs, :cafesfroids, :liqueur, :petitdejeuner]
  before_action :set_drinks, only: [:home, :dashboard, :drinks, :beers, :softs, :chauds, :cafesfroids, :jusfrais, :alcool, :cocktails, :vins, :aperitifs, :liqueur, :cafesfroids, :petitdejeuner]

  def home
    # if params[:query].present?
    #   @drinks = Drink.search_by_name(params[:query])
    # else
    # @drinks = Drink.all
    # end
  end

  # def index
  #   client = InstagramBasicDisplay::Client.new(auth_token: ENV['TOKEN'])
  #   user = User.first

  #   long_token_request = client.long_lived_token(short_lived_token: user.instagram_token)

  #   if long_token_request.success?
  #     auth_token = token_request.payload.access_token
  #     expires_in = token_request.payload.expires_in
  #     user.update_instagram_token(token: token, expires_in: expires_in)
  #   else
  #     render json: long_token_request.error, status: 400
  #   end
  # end

  def dashboard
    # @drinks = Drink.search_by_name(params[:query])
  end

  private

  def set_drinks
    @drinks = Drink.all
  end
end
