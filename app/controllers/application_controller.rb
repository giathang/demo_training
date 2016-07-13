class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_employee
    unless current_user && current_user.employee? || current_user.admin?
      flash[:danger] = "You isn't employee!"
      redirect_to root_path
    end
  end
  def require_admin
    unless current_user && current_user.admin?
      flash[:danger] = "You isn't admin!"
      redirect_to root_path
    end
  end
end

