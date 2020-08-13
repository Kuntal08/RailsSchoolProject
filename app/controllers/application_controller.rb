class ApplicationController < ActionController::Base

  def is_admin?
    if session[:user_id] == nil
      flash[:danger] = "Please Log In First"
      redirect_to root_path
    else
      if !current_user.admin?
        flash[:danger] = "You are not authorized as Admin!"
        redirect_to root_path
      end
    end
  end

  private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user

end
