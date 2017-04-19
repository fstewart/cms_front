class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  # GET /departments
  # GET /departments.json
  def index
    @departments = Department.all.alphasort
    #@pages = Page.all.sort_by {|x| [x.id, x.parent_id]}
  end

  # GET /departments/1
  # GET /departments/1.json
  def show
    @department = Department.find_by(params[:id])
    #@pages = @department.pages.published
    #@page = @department.page.published
  end

  def view_pages
    @department = Department.find_by(params[:id])
    @pages = @department.pages.sort_by {|x| [x.parent_id, x.id, x.title]}
  end

  # GET /departments/new
  def new
    @department = Department.new
  end

  # GET /departments/1/edit
  def edit
    @department = Department.all.find_by slug: (params[:id])
  end

  # POST /departments
  # POST /departments.json
  def create
    @department = Department.new(department_params)

    respond_to do |format|
      if @department.save
        format.html { redirect_to departments_url, notice: 'Department was successfully created.' }
        format.json { render :index, status: :ok, location: @department }
      else
        format.html { render :new }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departments/1
  # PATCH/PUT /departments/1.json
  def update
    respond_to do |format|
      if @department.update(department_params)
        format.html { redirect_to departments_url, notice: 'Department was successfully updated.' }
        format.json { render :index, status: :ok, location: @department }
      else
        format.html { render :edit }
        format.json { render json: @department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departments/1
  # DELETE /departments/1.json
  def destroy
    @department.destroy
    respond_to do |format|
      format.html { redirect_to departments_url, notice: 'Department was successfully destroyed.' }
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
    def set_department
      @department = Department.find_by slug:(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_params
      params.require(:department).permit(:id, :unit_type_id, :name, :phone, :fax, :office, :building_id, :header_image, :po_box)
    end
end
