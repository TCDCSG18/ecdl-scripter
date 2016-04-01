class HomeController < ApplicationController
  def index
    if user_signed_in?
      if current_user.gauth_enabled == "t"
        render "user_dashboard"
      else
        redirect_to user_displayqr_path
      end
    end
    if reviewer_signed_in?
      render "reviewer_dashboard"
    end
    if admin_user_signed_in?
      redirect_to admin_root_path
    end
  end
end
