class Admin::GenresController < ApplicationController

  def index
    @youte_genres = YouteGenre.all
    @youte_genre = YouteGenre.new
    @comment_genres = CommentGenre.all
    @comment_genre = CommentGenre.new
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
    
    @comment_genre = CommentGenre.new(comment_genre_params)
    @comment_genres = CommentGenre.all
    if @comment_genre.save
     flash[:notice] = "commentジャンルタグ作成成功"
     redirect_to admin_genres_path
    else
     render :index
    end
  end

  def edit
    @youte_genre = YouteGenre.find(params[:id])
    @comment_genre = CommentGenre.find(params[:id])
  end

  def update
    @youte_genre = YouteGenre.find(params[:id])
    if @youte_genre.update(youte_genre_params)
     flash[:notice] = "Youteジャンルタグ編集成功"
     redirect_to admin_genres_path
    else
     render :edit_youte
    end
    
    @comment_genre = CommentGenre.find(params[:id])
    if @comment_genre.update(comment_genre_params)
     flash[:notice] = "commentジャンルタグ編集成功"
     redirect_to admin_genres_path
    else
     render :edit_comment
    end
  end

  private
  def youte_genre_params
    params.require(:youte_genre).permit(:genre_name)
  end
  def comment_genre_params
    params.require(:comment_genre).permit(:genre_name)
  end

end