class User::UserInfosController < ApplicationController
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    @user.update(name_params)
    redirect_to  user_mypage_index_path(@user)
  end
  
  private
  def name_params
    params.require(:user).permit(:name)
  end

end
