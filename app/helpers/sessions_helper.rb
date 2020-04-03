module SessionsHelper
  def successful_session(user)
    session[:current_user_id] = user.id
    flash[:success] = "Welcome back, #{user.first_name}!"
    redirect_to '/home/index'
  end
end
