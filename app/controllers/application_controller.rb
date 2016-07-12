class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    if session[:user_id]
  	 @current_user ||= User.find(session[:user_id]) 
    end
  end

  def require_employee
  	unless current_user && current_user.employee? || current_user.admin?
  		redirect_to root_path, notice: "Login please!"
  	end
  end

  def require_admin
    unless current_user && current_user.admin?
      redirect_to root_path, notice: "Login please!"
    end
  end
end

