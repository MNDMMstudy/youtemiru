class Admin::GenreCommentsController < ApplicationController
  def index
    @comment_genres = CommentGenre.all
    @comment_genre = CommentGenre.new
  end

  def update
    @comment_genre = CommentGenre.find(params[:id])
    if @comment_genre.update(comment_genre_params)
     flash[:notice] = "commentジャンルタグ編集成功"
     redirect_to admin_genre_comments_path
    else
     render :edit
    end
  end

  def create
    @comment_genre = CommentGenre.new(comment_genre_params)
    @comment_genres = CommentGenre.all
    if @comment_genre.save
     flash[:notice] = "commentジャンルタグ作成成功"
     redirect_to admin_genre_comments_path
    else
     render :index
    end
  end

  def new
  end

  def edit
    @comment_genre = CommentGenre.find(params[:id])
  end

   private
  def comment_genre_params
    params.require(:comment_genre).permit(:genre_name)
  end
end
