class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    # Check out https://guides.rubyonrails.org/active_record_querying.html for more information.
    @users = User.includes(:profile)
  end
  
  # GET to /users/:id
  def show
    @user = User.find( params[:id] )
  end
end