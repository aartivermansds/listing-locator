class Admins::ListingCategoriesController < ApplicationController
  before_action :set_listing_category, only: [:show, :edit, :update, :destroy]

  # GET /listing_categories
  # GET /listing_categories.json
  def index
    @listing_categories = ListingCategory.all
  end

  # GET /listing_categories/1
  # GET /listing_categories/1.json
  def show
  end

  # GET /listing_categories/new
  def new
    @listing_category = ListingCategory.new
  end

  # GET /listing_categories/1/edit
  def edit
  end

  # POST /listing_categories
  # POST /listing_categories.json
  def create
    @listing_category = ListingCategory.new(listing_category_params)

    respond_to do |format|
      if @listing_category.save
        format.html { redirect_to admins_listing_category_path(@listing_category), notice: 'Listing category was successfully created.' }
        format.json { render :show, status: :created, location: @listing_category }
      else
        format.html { render :new }
        format.json { render json: @listing_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listing_categories/1
  # PATCH/PUT /listing_categories/1.json
  def update
    respond_to do |format|
      if @listing_category.update(listing_category_params)
        format.html { redirect_to admins_listing_category_path(@listing_category), notice: 'Listing category was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing_category }
      else
        format.html { render :edit }
        format.json { render json: @listing_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listing_categories/1
  # DELETE /listing_categories/1.json
  def destroy
    @listing_category.destroy
    respond_to do |format|
      format.html { redirect_to admins_listing_categories_url, notice: 'Listing category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing_category
      @listing_category = ListingCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_category_params
      params.require(:listing_category).permit(:name, :description, :banner_image)
    end
end
