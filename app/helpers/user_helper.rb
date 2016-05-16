module UserHelper
  def role(user)
    return "Admin" if user.role == 2
    "User"
  end
end
