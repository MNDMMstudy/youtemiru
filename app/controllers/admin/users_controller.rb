class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @users = User.all.order(created_at: :DESC)
  end

  def show
    @user =User.find(params[:id])
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to admin_user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:status)
  end
end
