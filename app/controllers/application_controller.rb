class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :require_login
  
  def require_logged_out
    if logged_in?
      redirect_to current_user
    else
      true
    end
  end
  

end
