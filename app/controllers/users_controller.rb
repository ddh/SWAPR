class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]

  #Display User info
  def show
    @user = User.find(params[:id])
  end

  # What to do when creating a new user (make a new User in db)

  def new
    @user = User.new
  end

  # Creating new Users
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to SWAPR!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  # Checks to see if user is logged in, preventing access
  def logged_in_user
    unless logged_in?
      flash[:danger] = "You need to log in first!"
      redirect_to login_url
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless @user == current_user
  end

  # Define private variables
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :address, :city, :state, :zip, :phone)
  end

end
