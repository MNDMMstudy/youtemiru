class Admin::GenresController < ApplicationController

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
    params.require(:youte_genre).permit(:genre_name)
  end
  def comment_genre_params
    params.require(:comment_genre).permit(:genre_name)
  end

end