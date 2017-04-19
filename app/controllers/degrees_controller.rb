class DegreesController < ApplicationController
  before_action :set_degree, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  # GET /degrees
  # GET /degrees.json
  def index
    @degrees = Degree.all
  end

  # GET /degrees/1
  # GET /degrees/1.json
  def show
    @degree = Degree.all.find_by slug: (params[:id])
  end

  # GET /degrees/new
  def new
    @degree = Degree.new
  end

  # GET /degrees/1/edit
  def edit
    @degree = Degree.all.find_by slug: (params[:id])
  end

  # POST /degrees
  # POST /degrees.json
  def create
    @degree = Degree.new(degree_params)

    respond_to do |format|
      if @degree.save
        format.html { redirect_to degrees_url, notice: 'Degree was successfully created.' }
        format.json { render :index }
      else
        format.html { render :new }
        format.json { render json: @degree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /degrees/1
  # PATCH/PUT /degrees/1.json
  def update
    respond_to do |format|
      if @degree.update(degree_params)
        format.html { redirect_to degrees_url, notice: 'Degree was successfully updated.' }
        format.json { render :index, status: :ok, location: @degree }
      else
        format.html { render :edit }
        format.json { render json: @degree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /degrees/1
  # DELETE /degrees/1.json
  def destroy
    @degree.destroy
    respond_to do |format|
      format.html { redirect_to degrees_url, notice: 'Degree was successfully destroyed.' }
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
    def set_degree
      @degree = Degree.find_by slug: (params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def degree_params
      params.require(:degree).permit(:unit_type_id, :degree_category_id, :name, :short_desc, :desc, :course_assigned, :status)
    end
end
