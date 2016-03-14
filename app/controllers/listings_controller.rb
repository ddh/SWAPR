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
    @current_user = current_user
  end

  def create
    Listing.create(listing_params) do |listing|
      listing.owner_id = current_user.id
      listing.date_created = Date.today
    end
    redirect_to listings_path
  end

  def show
    @listing = Listing.where(:listing_id => params[:id]).first
    @owner = User.where(:id => @listing.owner_id).first
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    Listing.update(params[:id], listing_params)
    redirect_to listings_path
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    flash[:success] = "Listing deleted!"
    redirect_to listings_path
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :borrow_length, :category)
  end
end
