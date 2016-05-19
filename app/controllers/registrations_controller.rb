class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:name, :description, :email, :password, :password_confirmation, :picture, :picture_cache)
  end

  def account_update_params
    params.require(:user).permit(:name, :description, :email, :password, :password_confirmation, :current_password)
  end
end
