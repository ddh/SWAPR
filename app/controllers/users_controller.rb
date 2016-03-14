class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :is_user_admin?, only: :destroy

  # Show ALL Users...
  def index
    @users = User.paginate(page: params[:page], :per_page => 10)
  end

  #Display User info
  def show
    @user = User.find(params[:id])
    @listings = @user.listings
    @exchanges = Listing.joins(:exchange).select("exchanges.*, listings.*").where("exchanges.lender_id = ? OR exchanges.borrower_id = ?", @user.id, @user.id)
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

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "User deleted!"
    redirect_to users_path
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



  # Only allow an action if the user is the same OR user is admin
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user) or current_user.admin?
  end

  # Define private variables
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :address, :city, :state, :zip, :phone)
  end

end
