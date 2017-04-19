class EmbaController < ApplicationController
  before_action :set_emba, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  def index
    @emba = Department.find_by_id(5)
    @pages = Page.all.sort_by {|x| [x.id, x.parent_id]}
  end

  def show
    @emba = Department.find_by_id(5)
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
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
  def set_emba
    @emba = Department.find_by slug:(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def emba_params
    params.require(:emba).permit(:unit_type_id, :name, :slug, :building_id, :phone, :fax, :office, :po_box, :header_image)
  end

end