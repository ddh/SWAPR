class UsersController < ApplicationController

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

  # Define private variables
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :address, :city, :state, :zip, :phone)
  end

end
