class ApplicationController < ActionController::Base

  protected

  def is_admin?
    return false unless user_signed_in?

    return true if current_user.role === 'admin'

    false
  end

  def check_for_admin
    return if is_admin?

    flash[:notice] = 'You dont have the required permissions'
    redirect_to root_path
  end

end
