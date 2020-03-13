class CocktailsController < ApplicationController
  before_action :authenticate_user!
  def index
    @cocktails = Cocktail.all
    @favorite_cocktails = current_user.favorited_by_type('Cocktail')
  end

  def toggle_favorite
    @cocktail = Cocktail.find(params[:id])
    current_user.favorited?(@cocktail) ? current_user.unfavorite(@cocktail) : current_user.favorite(@cocktail)
  end
end
