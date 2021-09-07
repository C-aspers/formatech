module ApplicationHelper
  def check_if_admin(current_user)
    if current_user .is_a? Integer
      check_user=current_user
    else 
      check_user = current_user.id
    end
      check_user = User.find(check_user)
      if check_user.is_admin == true
        return true
      end
  end
end
