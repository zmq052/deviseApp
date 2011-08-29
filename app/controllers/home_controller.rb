class HomeController < ApplicationController
  before_filter :authenticate_user!
  #load_resource
  #authorize_resource
  def index
    @users = User.all
  end

end
