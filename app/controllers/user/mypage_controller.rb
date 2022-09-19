class User::MypageController < ApplicationController
  def index
    @youtes = Youte.where(user_id: current_user.id).order(created_at: :DESC)
    @youte = Youte.new
    @user = current_user

  end

  def edit
  end

  def update
  end

  private
  def youte_params
    params.require(:youte).permit(:user_id, :genre_id, :report, :indicate, :text)
  end

end
