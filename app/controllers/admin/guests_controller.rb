class Admin::GuestsController < ApplicationController
  def new_guest
   user = Admin.find_or_create_by!(email: 'admin@example.com') do |user|
     user.password = SecureRandom.urlsafe_base64
     # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
   end
   sign_in user
   redirect_to  admin_homes_top_path, notice: 'ゲストAdminユーザーとしてログインしました。'
  end
end
