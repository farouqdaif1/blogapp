module ApplicationHelper
  def current_user
    User.all.first
  end
end
