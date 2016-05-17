class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def admin!
    redirect_to root_path unless current_user.role == 2
  end

  def authenticate_any!
    return true if admin_signed_in? || user_signed_in?
    false
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:email, :company_name, :address, :address_num)
    end
  end
end
