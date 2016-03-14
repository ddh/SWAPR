class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  private

    # Checks to see if user is logged in, preventing access
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "You need to log in first!"
        redirect_to login_url
      end
    end

  def is_user_admin?
    redirect_to(root_url) unless current_user.admin?
  end

end
