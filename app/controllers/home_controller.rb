class HomeController < ApplicationController
  def index
    if user_signed_in?
      # redirect_to user_dashboard_path
      sign_out
      render :text => "user signed in, and has now been signed out".html_safe
    end
    if reviewer_signed_in?
      # redirect_to reviewer_dashboard_path
      sign_out
      render :text => "reviewer signed in, and has now been signed out".html_safe
    end
    if admin_user_signed_in?
      redirect_to admin_root_path
    end
  end
end
