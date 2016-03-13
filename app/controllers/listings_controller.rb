class ListingsController < ApplicationController
  def index
    @listings = Listing.order('date_created DESC')
  end

  def search
    @query = "%#{params[:query]}%"
    @listings = Listing.where("title ILIKE ?", @query)
  end

  def new
    @listing = Listing.new
  end

  def create
    @user = User.first
    Listing.create(listing_params) do |listing|
      listing.owner_id = @user.user_id
      listing.date_created = Date.today

    end
    redirect_to listings_path
  end

  def listing
    @listing = Listing.where(:listing_id => params[:id]).first
    @owner = User.where(:user_id => @listing.owner_id).first
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :borrow_length, :category, :post_image)
  end
end
