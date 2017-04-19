class AcademicsController < ApplicationController
  
  def index
  	@departments = Department.alphasort.all
    @page = Page.find(params[:id])
  end

  def departments
    @department = Department.friendly.find(params[:id])
    @page = @department.pages.published.find_by(parent_id: 0)
  end

  def show
  	@department = Department.friendly.find(params[:id])
  	@page = @department.pages.published
  end

private
   # Use callbacks to share common setup or constraints between actions.
    # Never trust parameters from the scary internet, only allow the white list through.
    def department_params
      params.require(:department).permit(:id, :slug, :unit_type_id, :name, :phone, :fax, :office, :building_id, :header_image, :po_box)
    end

end
