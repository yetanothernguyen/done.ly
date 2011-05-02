class ApplicationController < ActionController::Base
  protect_from_forgery
  


  rescue_from Exceptions::NotAuthorized do |exception|
    redirect_to root_path, :alert => "Sorry, you're not authorized to do that."
  end
end
