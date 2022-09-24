class User::CommentsController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(indicate: false)
    redirect_to user_youte_path(@comment.youte)
  end

  private
  def comment_params
    params.permit(:user_id, :genre_id, :youte_id, :report, :indicate, :text, :star)
  end
end
