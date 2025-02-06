class FoodResourcesController < ApplicationController
  before_action :set_food_resource, only: %i[ show edit update destroy ]

  # GET /food_resources or /food_resources.json
  def index
    @food_resources = FoodResource.all
  end

  # GET /food_resources/1 or /food_resources/1.json
  def show
  end

  # GET /food_resources/new
  def new
    @food_resource = FoodResource.new
  end

  # GET /food_resources/1/edit
  def edit
  end

  # POST /food_resources or /food_resources.json
  def create
    @food_resource = FoodResource.new(food_resource_params)

    respond_to do |format|
      if @food_resource.save
        format.html { redirect_to @food_resource, notice: "Food resource was successfully created." }
        format.json { render :show, status: :created, location: @food_resource }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_resources/1 or /food_resources/1.json
  def update
    respond_to do |format|
      if @food_resource.update(food_resource_params)
        format.html { redirect_to @food_resource, notice: "Food resource was successfully updated." }
        format.json { render :show, status: :ok, location: @food_resource }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_resources/1 or /food_resources/1.json
  def destroy
    @food_resource.destroy!

    respond_to do |format|
      format.html { redirect_to food_resources_path, status: :see_other, notice: "Food resource was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_resource
      @food_resource = FoodResource.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def food_resource_params
      params.expect(food_resource: [ :name, :address_line1, :address_line2, :city, :state, :zip_code, :phone_number, :contact, :verified, :comments, :town_id ])
    end
end
