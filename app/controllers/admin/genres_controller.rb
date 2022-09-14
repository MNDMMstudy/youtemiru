class Admin::GenresController < ApplicationController

  def index
    @youte_genres = YouteGenre.all
    @youte_genre = YouteGenre.new
    @comment_genres = CommentGenre.all
  end

  def create
    @youte_genre = YouteGenre.new(youte_genre_params)
    @youte_genres = YouteGenre.all
    if @youte_genre.save
     flash[:notice] = "Youteジャンルタグ作成成功"
     redirect_to admin_genres_path
    else
     render :index
    end
  end

  def edit
    @youte_genre = YouteGenre.find(params[:id])
  end

  def update
    @youte_genre = YouteGenre.find(params[:id])
    if @youte_genre.update(youte_genre_params)
     flash[:notice] = "Youteジャンルタグ編集成功"
     redirect_to admin_genres_path
    else
     render :edit_youte
    end
  end

  private
  def youte_genre_params
    params.require(:youte_genre).permit(:genre_name)
  end

end