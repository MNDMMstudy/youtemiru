class Admin::YoutesController < ApplicationController
  before_action :authenticate_admin!
  def index
    @youtes =Youte.all.order(created_at: :DESC)
  end

  def show
    @youtes =Youte.find(params[:id])
    @comments = Comment.all
  end

  def edit
    @youte = Youte.find(params[:id])
  end

  def update
    @youte = Youte.find(params[:id])
    @youte.update(indicate: false)
    redirect_to admin_youte_path(@youte)
  end

private
  def youte_params
    params.require(:youte).permit(:user_id, :youte_genre_id, :report, :indicate, :text)
  end
end
