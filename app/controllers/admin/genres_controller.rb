class Admin::GenresController < ApplicationController
  before_action :authenticate_admin!

  def index


  end

  def create



  end

  def edit


  end

  def update



  end

  private
  def youte_genre_params
    params.require(:youte_genre).permit(:name)
  end
  def comment_genre_params
    params.require(:comment_genre).permit(:name)
  end

end