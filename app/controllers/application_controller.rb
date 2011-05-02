class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    stored_location_for(:user) || user_path(resource)
	end
  
  rescue_from Exceptions::NotAuthorized do |exception|
    redirect_to root_path, :alert => "Sorry, you're not authorized to do that."
  end
end
