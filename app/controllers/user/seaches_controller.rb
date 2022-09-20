class User::SeachesController < ApplicationController
  def search
    @youtes = Youte.looks(params[:word]).order(created_at: :DESC)
    @youte = Youte.new
    @user = current_user
  end
end
