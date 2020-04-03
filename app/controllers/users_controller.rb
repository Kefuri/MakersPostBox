class UsersController < ApplicationController
  def signup
    @user = User.new()
  end
  
  def create
    # check if user exists
    # if so, flash something and stay on page with signup failing
    # if not, make a user, flash signup successful, redirect to home
    if user_already_exists?
      flash[:success] = "Email already in use"
      redirect_to '/'
    else 
      @user = User.new(user_params)
      if @user.save
        flash[:success] = "Sign Up Successful!"
        redirect_to '/home/index'
      else
        flash[:success] = "Sign up failed to save"
        render 'signup'
      end
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

  def user_already_exists? #defines if user exists
    User.find_by_email(user_params[:email]) ? true : false
  end

  # def stop_user_duplication
  #   if user_already_exists?
  #     render 'signup'
  #     break
  #   end
  # end

end
