class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def admin!
    redirect_to root_path unless current_user.role == 2
  end

  def authenticate_any!
    return true if admin_signed_in? || user_signed_in?
    false
  end
end
