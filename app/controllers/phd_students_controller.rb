class PhdStudentsController < ApplicationController
  before_action :set_phd_student, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  # GET /phd_students
  # GET /phd_students.json
  def index
    @phd_students = PhdStudent.all
  end

  # GET /phd_students/1
  # GET /phd_students/1.json
  def show
  end

  # GET /phd_students/new
  def new
    @phd_student = PhdStudent.new
  end

  # GET /phd_students/1/edit
  def edit
  end

  # POST /phd_students
  # POST /phd_students.json
  def create
    @phd_student = PhdStudent.new(phd_student_params)

    respond_to do |format|
      if @phd_student.save
        format.html { redirect_to @phd_student, notice: 'Phd student was successfully created.' }
        format.json { render :show, status: :created, location: @phd_student }
      else
        format.html { render :new }
        format.json { render json: @phd_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phd_students/1
  # PATCH/PUT /phd_students/1.json
  def update
    respond_to do |format|
      if @phd_student.update(phd_student_params)
        format.html { redirect_to @phd_student, notice: 'Phd student was successfully updated.' }
        format.json { render :show, status: :ok, location: @phd_student }
      else
        format.html { render :edit }
        format.json { render json: @phd_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phd_students/1
  # DELETE /phd_students/1.json
  def destroy
    @phd_student.destroy
    respond_to do |format|
      format.html { redirect_to phd_students_url, notice: 'Phd student was successfully destroyed.' }
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
    def set_phd_student
      @phd_student = PhdStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phd_student_params
      params.require(:phd_student).permit(:name, :bio, :email, :descriptor, :honors, :photo, :phd_id, :cv, :jmpaper, :status, :pubfile, :cvfile)
    end
end
