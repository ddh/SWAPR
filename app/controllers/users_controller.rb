class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.first
    User.create(user_params)
    redirect_to listings_path
  end

  def show
    @user = User.where(user_id: params[:id]).first
    @listings = Listing.where(owner_id: @user.user_id)
  end

  def login

  end

  def authenticate
    @username = params[:user]
    @password = params[:password]
    puts @username
    puts @password
    redirect_to root_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :address, :city, :state, :zip, :phone, :email, :password)
  end
end
