class Users::AccomodationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_accomodation, only: [:show, :edit, :update, :destroy]
  layout 'listing'
  # GET /accomodations
  # GET /accomodations.json
  def index
    @accomodations = current_user.accomodations
  end
  # GET /accomodations/1
  # GET /accomodations/1.json
  def show
   @accomodation = Accomodation.find(params[:id])
 end
  # GET /accomodations/new
  def new
   @accomodation = Accomodation.new
   @amenities = Amenity.all
 end
  # GET /accomodations/1/edit
  def edit
   @accomodations = Accomodation.all
   @amenities = Amenity.all
 end
 def upload_accomodation_image
   @accomodations = Accomodation.find(params[:upload_images][:accomodation_id])
   @image = @accomodations.images.build(image: params[:upload][:image])
   if @image.save!
     respond_to do |format|
       format.json{ render :json => @image }
     end
   end
 end
 def remove_accomodation_image
   @image = Image.find(params[:id])
   if  @image .destroy
    render json: { message: "file delete from server"}
  else
   render json: {message: @image.errors.full_messages.join(", ") }
 end
end
def add_images
 @accomodation = Accomodation.find(params[:id])
end
  # POST /accomodations
  # POST /accomodations.json
  def create
   @accomodation = Accomodation.new(accomodation_params)
   respond_to do |format|
    if @accomodation.save
      format.html { redirect_to users_accomodation_path(@accomodation), notice: 'accomodation was successfully created.' }
      format.json { render :show, status: :created, location: @accomodation }
    else
      format.html { render :new }
      format.json { render json: @accomodation.errors, status: :unprocessable_entity }
    end
  end
end
  # PATCH/PUT /accomodations/1
  # PATCH/PUT /accomodations/1.json
  def update
    respond_to do |format|
      if @accomodation.update(accomodation_params)
        format.html { redirect_to users_accomodation_path(@accomodation), notice: 'accomodation was successfully updated.' }
        format.json { render :show, status: :ok, location: @accomodation }
      else
       format.html { render :edit }
       format.json { render json: @accomodation.errors, status: :unprocessable_entity }
     end
   end
 end
  # DELETE /accomodations/1
  # DELETE /accomodations/1.json
  def destroy
   @accomodation.destroy
   respond_to do |format|
     format.html { redirect_to users_accomodations_url, notice: 'accomodation was successfully destroyed.' }
     format.json { head :no_content }
   end
 end
 private
  # Use callbacks to share common setup or constraints between actions.
  def set_accomodation
    @accomodation = Accomodation.find(params[:id])
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def accomodation_params
    params.require(:accomodation).permit(:name, :description, :banner_image, :city, :state, :country, :zipcode, :latitude, :longitude, :contact, :email, :website, :address,  :no_of_rooms, :no_of_toilets, :no_of_halls, :user_id, images_attributes: [:id,:image, :imageable_id, :imageable_type, :_destroy])
  end
end