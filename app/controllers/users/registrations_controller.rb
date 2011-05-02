class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :check_permissions, :only => [:new, :create, :cancel]
  skip_before_filter :require_no_authentication
  
  private
  
  def check_permissions
      raise Exceptions::NotAuthorized unless current_user.try(:admin?)
  end
end