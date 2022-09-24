# frozen_string_literal: true

class User::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  protected

  # 会員の論理削除のための記述。退会後は、同じアカウントでは利用できない。
    def reject_user
      @user = User.find_by(email: params[:user][:email])
      if @user
        if @user.valid_password?(params[:user][:password]) && (@user.status != 0)
          flash[:notice] = "退職済みです。現職の場合は、管理者までお声がけください。"
        else
          flash[:notice] = "項目を入力してください"
        end
      end
    end

end
