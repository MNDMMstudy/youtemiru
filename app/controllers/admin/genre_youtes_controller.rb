class Admin::GenreYoutesController < ApplicationController
  def index
    @youte_genres = YouteGenre.all
    @youte_genre = YouteGenre.new
  end

  def update
    @youte_genre = YouteGenre.find(params[:id])
    if @youte_genre.update(youte_genre_params)
     flash[:notice] = "Youteジャンルタグ編集成功"
     redirect_to admin_genre_youtes_path
    else
     render :edit
    end
  end

  def create
    @youte_genre = YouteGenre.new(youte_genre_params)
    @youte_genres = YouteGenre.all
    if @youte_genre.save
     flash[:notice] = "Youteジャンルタグ作成成功"
     redirect_to admin_genre_youtes_path
    else
     render :index
    end
  end

  def new
  end

  def edit
     @youte_genre = YouteGenre.find(params[:id])
  end

    private
  def youte_genre_params
    params.require(:youte_genre).permit(:genre_name)
  end
end
