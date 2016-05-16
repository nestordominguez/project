module ApplicationHelper
  def admin?
  	current_user.role == 2
  end
end
