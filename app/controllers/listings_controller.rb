class ListingsController < ApplicationController
  before_action :logged_in_user, only: [:create, :edit, :update, :destroy]
  before_action :correct_user, only: [:destroy, :edit, :update]

  def index
    @listings = Listing.paginate(page: params[:page], :per_page => 10)
  end

  def search
    @query = "%#{params[:query]}%"
    @listings = Listing.where("title ILIKE ?", @query)
  end

  def new
    @listing = Listing.new
    @current_user = current_user
  end

  def create
    @listing = Listing.new(listing_params)
    # @listing.user_id = current_user.id
    if @listing.save
      flash[:success] = "Listing created!"
      redirect_to listing_path
    else
      redirect_to listings_path
    end
  end

  def show
    @listing = Listing.find(params[:id])
    @owner = User.find(@listing.user_id)

  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    Listing.update(params[:id], listing_params)
    redirect_to listing_path
  end

  def destroy
    @listing = Listing.find(params[:id]).destroy
    flash[:success] = "Listing deleted!"
    redirect_to listings_path
  end

  def correct_user
    @listing = current_user.listings.find_by(id: params[:id])
    unless current_user?(current_user.id) or current_user.admin?
      flash[:danger] = "I'm afraid you can't do that!"
      redirect_to request.referrer || root_url
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :borrow_length, :category)
  end
end
