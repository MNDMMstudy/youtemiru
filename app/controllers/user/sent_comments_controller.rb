class User::SentCommentsController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
  end

  def edit
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(indicate: false)
    redirect_to user_youte_path(@comment.youte)
  end

  def create
    @youte = Youte.find(params[:youte_id])
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @user =current_user
    if @comment.save
     flash[:notice] = "コメントの投稿が完了しました"
     #redirect_to user_youte_index_path(@youte.id)
     redirect_to user_youte_path(@youte.id)
    else
     redirect_to user_youte_path(@youte)
    end
  end

  def new
  end

  private
  def comment_params
    params.permit(:user_id, :genre_id, :youte_id, :report, :indicate, :text, :star)
  end
end
