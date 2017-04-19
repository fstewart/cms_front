class BuildingsController < ApplicationController

  # before_filter :authenticate_user!
  before_action :set_building, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout
  after_action

  # GET /buildings
  # GET /buildings.json
  def index
    @buildings = Building.all
  end

  # GET /buildings/1
  # GET /buildings/1.json
  def show
    #@building = Building.all.find_by id: (params[:id])
  end

  # GET /buildings/new
  def new
    @building = Building.new
  end

  # GET /buildings/1/edit
  def edit
    #@building = Building.all.find_by id: (params[:id])
  end

  # POST /buildings
  # POST /buildings.json
  def create
    @building = Building.new(building_params)
    respond_to do |format|
      if @building.save
        format.html { redirect_to buildings_url, notice: 'Building was successfully created.' }
        format.json { render :index}
      else
        format.html { render :new }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buildings/1
  # PATCH/PUT /buildings/1.json
  def update
    @building.should_generate_new_friendly_id?
    respond_to do |format|
      if @building.update(building_params)
        format.html { redirect_to buildings_url, notice: 'Building was successfully updated.' }
        format.json { render :index, status: :ok, location: @building }
      else
        format.html { render :edit }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buildings/1
  # DELETE /buildings/1.json
  def destroy
    @building.destroy
    respond_to do |format|
      format.html { redirect_to buildings_url, notice: 'Building was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  	def resolve_layout
      case action_name
        when "index", "new", "create", "destroy", "edit"
        "dashboard"
        else
        "application"
      end
	  end

    # Use callbacks to share common setup or constraints between actions.
    def set_building
      @building = Building.find_by slug: (params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_params
      params.require(:building).permit(:name, :url, :body)
    end
end
