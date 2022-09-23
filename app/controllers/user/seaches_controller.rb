class User::SeachesController < ApplicationController
  before_action :authenticate_user!
  def search
    @youtes = Youte.looks(params[:word]).order(created_at: :DESC)
    @youte = Youte.new
    @user = current_user
  end
end
