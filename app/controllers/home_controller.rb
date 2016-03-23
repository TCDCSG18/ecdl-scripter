class HomeController < ApplicationController
  def index
    if user_signed_in?
      render "user_dashboard"
    end
    if reviewer_signed_in?
      render "reviewer_dashboard"
    end
    if admin_user_signed_in?
      redirect_to admin_root_path
    end
  end
end
