class User::ReportCommentsController < ApplicationController
  def check
    @comment = Comment.find(params[:sent_comment_id])
  end

  def update
    @comment = Comment.find(params[:sent_comment_id])
    @comment.update(report: true)
    redirect_to  user_youte_path(@comment.youte_id)
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :comment_genre_id, :report, :indicate, :text)
  end
end
