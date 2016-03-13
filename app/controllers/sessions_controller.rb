class SessionsController < ApplicationController


  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or user
    else
      # If unable to login, show error message:
      flash.now[:danger] = 'Invalid email and/or password' # Not quite right!
      # Then redirect to login again:
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
