class SessionsController < ApplicationController
  include SessionsHelper

  skip_before_action :require_login

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.password == params[:session][:password]
      successful_session(user)
    else
      flash[:error] = 'Invalid email/password combination'
      redirect_to '/users/signin'
    end
  end

  def destroy
    session.delete(:current_user_id)
    flash[:success] = "You have logged out"
    redirect_to '/users/signin'
  end
end
