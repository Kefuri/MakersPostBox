class UsersController < ApplicationController
  def signup
    @user = User.new()
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Sign Up Successful!"
      redirect_to '/home/index'
    else
      render 'signup'
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
