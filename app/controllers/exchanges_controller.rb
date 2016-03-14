class ExchangesController < ApplicationController

  def new
    @exchange = Exchange.new
    @listing = Listing.find(params[:id])
    @owner = User.find(@listing.user_id)
    current_user
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @owner = User.find(@listing.user_id)
    Exchange.create do |exchange|
      exchange.listing_id = @listing.listing_id
      exchange.borrowed_on = Date.today
      exchange.borrower_id = current_user.id
      exchange.lender_id = @owner.id
    end
    redirect_to listings_path
  end
end
