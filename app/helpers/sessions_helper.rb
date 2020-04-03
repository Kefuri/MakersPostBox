module SessionsHelper
  def successful_session(user)
    session[:current_user_id] = user.id
    flash[:success] = "Welcome back, #{user.first_name}!"
    redirect_to '/home/index'
  end

  def current_user
    @current_user ||= User.find_by(id: session[:current_user_id]) if session[:current_user_id]
  end
end
