class UnitsController < ApplicationController
  before_action :set_unit, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  # GET /units
  # GET /units.json
  def index
    @units = Unit.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @units }
    end
  end

  # GET /units/1
  # GET /units/1.json
  def show
    respond_to do |format|
      format.html # show_old_old.html.erb
      format.xml  { render :xml => @unit }
    end
  end

  # GET /units/new
  def new
    @unit = Unit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unit }
    end
  end

  # GET /units/1/edit
  def edit
  end

  # POST /units
  # POST /units.json
  def create
    @unit = Unit.new(unit_params)

    respond_to do |format|
      if @unit.save
        format.html { redirect_to @unit, notice: 'Unit was successfully created.' }
        format.json { render :show, status: :created, location: @unit }
      else
        format.html { render :new }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /units/1
  # PATCH/PUT /units/1.json
  def update
    respond_to do |format|
      if @unit.update(unit_params)
        format.html { redirect_to @unit, notice: 'Unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @unit }
      else
        format.html { render :edit }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /units/1
  # DELETE /units/1.json
  def destroy
    @unit.destroy
    respond_to do |format|
      format.html { redirect_to units_url, notice: 'Unit was successfully destroyed.' }
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
    def set_unit
      @unit = Unit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #def unit_params
    #  params.require(:unit).permit(:unit_type_id, :name, :overview)
    #end
    
    def unit_params
      params.require(:unit).permit(:id, :name, :overview, 
      		sections_attributes: [:id, :title, :content, :_destroy, sub_sections_attributes: [:id, :_destroy, :title, :content]])
  	end

    def unit_params
      params.require(:unit).permit(:unit_type_id, :name, :overview)
    end

end
