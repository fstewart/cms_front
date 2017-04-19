class DegreeCategoriesController < ApplicationController
  before_action :set_degree_category, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  # GET /degree_categories
  # GET /degree_categories.json
  def index
    @degree_categories = DegreeCategory.all
  end

  # GET /degree_categories/1
  # GET /degree_categories/1.json
  def show
    @degree_category = DegreeCategory.all.find_by slug: (params[:id])
  end

  # GET /degree_categories/new
  def new
    @degree_category = DegreeCategory.new
  end

  # GET /degree_categories/1/edit
  def edit
    @degree_category = DegreeCategory.all.find_by slug: (params[:id])
  end

  # POST /degree_categories
  # POST /degree_categories.json
  def create
    @degree_category = DegreeCategory.new(degree_category_params)

    respond_to do |format|
      if @degree_category.save
        format.html { redirect_to degree_categories_url, notice: 'Degree category was successfully created.' }
        format.json { render :show, status: :created, location: @degree_category }
      else
        format.html { render :new }
        format.json { render json: @degree_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /degree_categories/1
  # PATCH/PUT /degree_categories/1.json
  def update
    @degree_category.should_generate_new_friendly_id?
    respond_to do |format|
      if @degree_category.update(degree_category_params)
        format.html { redirect_to degree_categories_url, notice: 'Degree category was successfully updated.' }
        format.json { render :show, status: :ok, location: @degree_category }
      else
        format.html { render :edit }
        format.json { render json: @degree_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /degree_categories/1
  # DELETE /degree_categories/1.json
  def destroy
    @degree_category.destroy
    respond_to do |format|
      format.html { redirect_to degree_categories_url, notice: 'Degree category was successfully destroyed.' }
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
    def set_degree_category
      @degree_category = DegreeCategory.find_by slug: (params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def degree_category_params
      params.require(:degree_category).permit(:department_id, :name, :url, :desc, :status)
    end
end
