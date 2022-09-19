class User::MyFavoritesController < ApplicationController
  def index
    @favorites = Favorite.where(user_id: current_user.id).order(created_at: :DESC)
    @youte =Youte.new
    @user = current_user
  end
end
