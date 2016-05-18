module ApplicationHelper
  def user_current
		user = current_user || current_admin
	end
	def setup_company
	  Company.new
	end
end
