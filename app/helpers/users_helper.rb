module UsersHelper
  def fullname(user)
    "#{user.names} #{user.surnames}"
  end
end
