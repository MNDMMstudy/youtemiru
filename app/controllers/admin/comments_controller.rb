class Admin::CommentsController < ApplicationController
  def index
    @comments =Comment.all.order(created_at: :DESC)
  end

  def show
    @comments = Comment.find(params[:id])
  end

  def edit
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(indicate: false)
    redirect_to admin_youte_path(@comment.youte)
  end

   private
    def comment_params
      params.permit(:user_id, :genre_id, :youte_id, :report, :indicate, :text)
    end
end
