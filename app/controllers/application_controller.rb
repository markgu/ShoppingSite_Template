class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def check_login
    if !session[:userId]
      flash[:status] = false
      flash[:alert] = "Yon need to be logged in first"

      redirect_to login_path
    else
      $user_name = User.find_by(:userId, session[:userId]).firstName

    end

  end
end
