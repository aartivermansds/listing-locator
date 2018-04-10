class Users::ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  layout 'listing'
  # GET /listings
  # GET /listings.json
  def index
   @listings = current_user.listings
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
   @listings = Listing.all
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
def add_images
 @listing = Listing.find(params[:id])
end
  # POST /listings
  # POST /listings.json
  def create
   @listing = Listing.new(listing_params)
   respond_to do |format|
    if @listing.save
      format.html { redirect_to users_listing_path(@listing), notice: 'Listing was successfully created.' }
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
        format.html { redirect_to users_listing_path(@listing), notice: 'Listing was successfully updated.' }
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
     format.html { redirect_to users_listings_url, notice: 'Listing was successfully destroyed.' }
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
    params.require(:listing).permit(:name, :description, :banner_image, :city, :state, :country, :zipcode, :latitude, :longitude, :contact, :email, :website, :address, :fb_url, :linkedin_url, :gplus_url, :twitter_url, :listing_category_id ,images_attributes: [:id,:image, :imageable_id, :imageable_type, :_destroy])
  end
end