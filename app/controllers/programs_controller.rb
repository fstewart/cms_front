class ProgramsController < ApplicationController
  before_action :set_program, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  def index
    @programs = Program.all
  end

  def show
    @program = Program.all.find_by slug: (params[:id])
  end

  def new
    @program = Program.new
  end

  def edit
    @program = Program.all.find_by slug: (params[:id])
  end

  def create
    @program = Program.new(program_params)
    respond_to do |format|
      if @program.save
        format.html { redirect_to programs_path, notice: 'Program was successfully created.' }
        format.json { render :index}
      else
        format.html { render :new }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @program.should_generate_new_friendly_id?
    respond_to do |format|
      if @program.update(program_params)
        format.html { redirect_to programs_path, notice: 'Program was successfully updated.' }
        format.json { render :index, status: :ok, location: @program }
      else
        format.html { render :edit }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @program.destroy
    respond_to do |format|
      format.html { redirect_to programs_url, notice: 'Program was successfully destroyed.' }
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
  def set_program
    @program = Program.find_by slug:(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def program_params
    params.fetch(:program, {}).permit(:unit_type_id, :name, :slug, :building_id, :phone, :fax, :office, :po_box, :header_image)
  end

end