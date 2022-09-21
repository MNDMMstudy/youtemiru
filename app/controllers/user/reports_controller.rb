class User::ReportsController < ApplicationController
  def check
    @youte = Youte.find(params[:id])
  end

  def update
    @youte = Youte.find(params[:id])
    @youte.update(report: false)
    redirect_to  user_youtes_path
  end

  private
  def youte_params
    params.require(:youte).permit(:user_id, :youte_genre_id, :report, :indicate, :text)
  end
end
