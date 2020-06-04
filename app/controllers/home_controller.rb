class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @merchant_requests = MerchantRequest.order("created_at DESC")
  end

  def terms
  end

  def privacy
  end
end
