class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  load_and_authorize_resource
  protect_from_forgery
end
