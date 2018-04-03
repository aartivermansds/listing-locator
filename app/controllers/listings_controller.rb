class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]
  layout 'listing'
  # GET /listings
  # GET /listings.json
  def index
    @listings = Listing.all
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    @latest_listings = Listing.last(5)
  end

  # GET /listings/new
  def new
    @listing = Listing.new
    @amenities = Amenity.all
    @working_hours  = WorkingHour.new
  end

  # GET /listings/1/edit
  def edit
    @amenities = Amenity.all
  end

  def upload_listing_image
     @listings = Listing.find(params[:upload_images][:listing_id])
     @image = @listings.images.build(image: params[:upload][:image])
     if @image.save!
      respond_to do |format|
        format.json{ render :json => @image }
      end
    end
  end

    def remove_listing_image
     @image = Image.find(params[:id])
     if  @image .destroy
      render json: { message: "file delete from server"}
    else
      render json: {message: @image.errors.full_messages.join(", ") }

    end
  end



  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)

    respond_to do |format|
      if @listing.save
        if params[:listing][:amenities].present?
          params[:listing][:amenities].each do |amenity|
            @listing.listing_amenities.create(amenity_id: amenity)
          end
        end
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        if params[:listing][:amenity_remove].present?
          id_param_arr = params[:listing][:amenity_remove].map {|i| i.to_i}
          if @listing.amenities.ids.uniq != id_param_arr
            diff_arr = @listing.amenities.ids - id_param_arr
            @listing.listing_amenities.where('amenity_id IN (?)', diff_arr).destroy_all
          end
        else
          @listing.listing_amenities.destroy_all
        end
        if params[:listing][:amenities].present?
          params[:listing][:amenities].each do |amenity|
            @listing.listing_amenities.create(amenity_id: amenity)
          end
        end
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:name, :description, :banner_image, :city, :state, :country, :zipcode, :latitude, :longitude, :contact, :email, :website, :address, :fb_url, :linkedin_url, :gplus_url, :twitter_url, :listing_category_id, working_hours_attributes: [:id, :listing_id, :day, :from, :to, :_destroy],  images_attributes: [:id,:image, :imageable_id, :imageable_type, :_destroy])
    end
  end
