class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @band=Band.find_by(:user_id => params[:id])
  end
end
