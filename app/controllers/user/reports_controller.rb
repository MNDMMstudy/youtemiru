class User::ReportsController < ApplicationController
  def check
    @youte = Youte.find(params[:youte_id])
  end

  def update
    @youte = Youte.find(params[:youte_id])
    @youte.update(report: true)
    redirect_to  user_youte_path(@youte)
  end

  private
  def youte_params
    params.require(:youte).permit(:user_id, :youte_genre_id, :report, :indicate, :text)
  end
end
