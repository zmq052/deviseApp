class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  #load_and_authorize_resource
  
    rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end
  protect_from_forgery
end
