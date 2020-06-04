class DetailsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_detail, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :current_user_details, only:[:show]
  # GET /details
  # GET /details.json
  def index
    @details = Detail.all
  end

  # GET /details/1
  # GET /details/1.json
  def show
  end

  # GET /details/new
  def new
     @detail = current_user.details.build
  end

  # GET /details/1/edit
  def edit
  end

  # POST /details
  # POST /details.json
  def create
    @detail = current_user.details.build(detail_params)
    respond_to do |format|
      if @detail.save
        format.html { redirect_to @detail, notice: 'Detail was successfully created.' }
        format.json { render :show, status: :created, location: @detail }
      else
        format.html { render :new }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /details/1
  # PATCH/PUT /details/1.json
  def update
    respond_to do |format|
      if @detail.update(detail_params)
        format.html { redirect_to @detail, notice: 'Detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail }
      else
        format.html { render :edit }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /details/1
  # DELETE /details/1.json
  def destroy
    @detail.destroy
    respond_to do |format|
      format.html { redirect_to details_url, notice: 'Detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail
       @detail = Detail.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def detail_params
      params.require(:detail).permit(:shop_name, :email, :phone, :address_1, :address_2, :address_3)
    end

    # check if the user is authorised to edit,update or destroy the cv
        def correct_user
          @detail = current_user.details.find_by(params[:friendly])
              redirect_to details_path, notice: "Not authorised to edit this details" if @detail.nil?
        end
        # check if  cv belongs to the correct user - current user
          def current_user_details
            if user_signed_in?
              @details = current_user.details.order("created_at DESC")
           end
         end
end
