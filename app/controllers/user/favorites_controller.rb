class User::FavoritesController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
    youte = Youte.find(params[:youte_id])
    comment = Comment.find(params[:sent_comment_id])
    favorite = current_user.favorites.new(comment_id: comment.id)
    favorite.save
    redirect_to user_youte_path(youte)
  end

  def destroy
    youte = Youte.find(params[:youte_id])
    comment = Comment.find(params[:sent_comment_id])
    favorite = current_user.favorites.find_by(comment_id: comment.id)
    favorite.destroy
    redirect_to user_youte_path(youte)
  end
end
