class MerchantRequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_merchant_request, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :current_user_merchant_request, only:[:show]

  # GET /merchant_requests
  # GET /merchant_requests.json
  def index
    @merchant_requests = MerchantRequest.all
  end

  # GET /merchant_requests/1
  # GET /merchant_requests/1.json
  def show
  end

  # GET /merchant_requests/new
  def new
    #@merchant_request = MerchantRequest.new
    @merchant_request = current_user.merchant_requests.build
  end

  # GET /merchant_requests/1/edit
  def edit
  end

  # POST /merchant_requests
  # POST /merchant_requests.json
  def create
    @merchant_request = current_user.merchant_requests.build(merchant_request_params)

    respond_to do |format|
      if @merchant_request.save
        format.html { redirect_to @merchant_request, notice: 'Merchant request was successfully created.' }
        format.json { render :show, status: :created, location: @merchant_request }
      else
        format.html { render :new }
        format.json { render json: @merchant_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merchant_requests/1
  # PATCH/PUT /merchant_requests/1.json
  def update
    respond_to do |format|
      if @merchant_request.update(merchant_request_params)
        format.html { redirect_to @merchant_request, notice: 'Merchant request was successfully updated.' }
        format.json { render :show, status: :ok, location: @merchant_request }
      else
        format.html { render :edit }
        format.json { render json: @merchant_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merchant_requests/1
  # DELETE /merchant_requests/1.json
  def destroy
    @merchant_request.destroy
    respond_to do |format|
      format.html { redirect_to merchant_requests_url, notice: 'Merchant request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merchant_request
      @merchant_request = MerchantRequest.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def merchant_request_params
      params.require(:merchant_request).permit(:merchant_type, :quantity, :slug)
    end

    # check if the user is authorised to edit,update or destroy the cv
        def correct_user
          @merchant_request = current_user.merchant_requests.find_by(params[:friendly])
              redirect_to merchant_requests_path, notice: "Not authorised to edit this merchant_request" if @merchant_request.nil?
        end
        # check if  cv belongs to the correct user - current user
          def current_user_merchant_request
            if user_signed_in?
              @merchant_requests = current_user.merchant_requests.order("created_at DESC")
           end
         end


end
