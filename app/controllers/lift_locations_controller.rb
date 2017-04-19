class LiftLocationsController < ApplicationController
  layout :resolve_layout
  before_action :set_lift_location, only: [:show, :edit, :update, :destroy]

  # GET /lift_locations
  # GET /lift_locations.json
  def index
    @lift_locations = LiftLocation.all
  end

  # GET /lift_locations/1
  # GET /lift_locations/1.json
  def show
  end

  # GET /lift_locations/new
  def new
    @lift_location = LiftLocation.new
  end

  # GET /lift_locations/1/edit
  def edit
  end

  # POST /lift_locations
  # POST /lift_locations.json
  def create
    @lift_location = LiftLocation.new(lift_location_params)

    respond_to do |format|
      if @lift_location.save
        format.html { redirect_to lift_locations_url, notice: 'Lift location was successfully created.' }
        format.json { redirect_to lift_locations_url, status: :created, location: @lift_location }
      else
        format.html { render :new }
        format.json { render json: @lift_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lift_locations/1
  # PATCH/PUT /lift_locations/1.json
  def update
    respond_to do |format|
      if @lift_location.update(lift_location_params)
        format.html { redirect_to lift_locations_url, notice: 'Lift location was successfully updated.' }
        format.json { redirect_to lift_locations_url, status: :ok, location: @lift_location }
      else
        format.html { render :edit }
        format.json { render json: @lift_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lift_locations/1
  # DELETE /lift_locations/1.json
  def destroy
    @lift_location.destroy
    respond_to do |format|
      format.html { redirect_to lift_locations_url, notice: 'Lift location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
  	def resolve_layout
      case action_name
        when "index", "new", "create", "destroy"
          "dashboard"
        else
          "application"
      end
    end
  
    # Use callbacks to share common setup or constraints between actions.
    def set_lift_location
      @lift_location = LiftLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lift_location_params
      params.require(:lift_location).permit(:name, :address, :map_url)
    end
end
