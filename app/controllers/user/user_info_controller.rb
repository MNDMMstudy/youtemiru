class User::UserInfoController < ApplicationController
  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(name_params)
      redirect_to user_mypage_index_path(@user.id)
    else
      render "edit"
    end
  end

  private
  def name_params
    params.require(:user).permit(:name)
  end

end
