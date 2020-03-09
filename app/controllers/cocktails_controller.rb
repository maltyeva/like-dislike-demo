class CocktailsController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  def index
    @cocktails = Cocktail.all
  end

  def toggle_favorite
    @cocktail = Cocktail.find(params[:id])
    current_user.favorited?(@cocktail) ? current_user.unfavorite(@cocktail) : current_user.favorite(@cocktail)
  end
end
