class UsersController < ApplicationController
  def signup
    @user = User.new()
  end
  
  def create
    @user = User.create(user_params)
    redirect_to '/home/index'
  end

  private
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
