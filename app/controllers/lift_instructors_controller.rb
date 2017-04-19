class LiftInstructorsController < ApplicationController
	layout :resolve_layout
  before_action :set_lift_instructor, only: [:show, :edit, :update, :destroy]

  # GET /lift_instructors
  # GET /lift_instructors.json
  def index
    @lift_instructors = LiftInstructor.all
  end

  # GET /lift_instructors/1
  # GET /lift_instructors/1.json
  def show
  end

  # GET /lift_instructors/new
  def new
    @lift_instructor = LiftInstructor.new
  end

  # GET /lift_instructors/1/edit
  def edit
  end

  # POST /lift_instructors
  # POST /lift_instructors.json
  def create
    @lift_instructor = LiftInstructor.new(lift_instructor_params)

    respond_to do |format|
      if @lift_instructor.save
        format.html { redirect_to @lift_instructor, notice: 'Lift instructor was successfully created.' }
        format.json { render :show, status: :created, location: @lift_instructor }
      else
        format.html { render :new }
        format.json { render json: @lift_instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lift_instructors/1
  # PATCH/PUT /lift_instructors/1.json
  def update
    respond_to do |format|
      if @lift_instructor.update(lift_instructor_params)
        format.html { redirect_to @lift_instructor, notice: 'Lift instructor was successfully updated.' }
        format.json { render :show, status: :ok, location: @lift_instructor }
      else
        format.html { render :edit }
        format.json { render json: @lift_instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lift_instructors/1
  # DELETE /lift_instructors/1.json
  def destroy
    @lift_instructor.destroy
    respond_to do |format|
      format.html { redirect_to lift_instructors_url, notice: 'Lift instructor was successfully destroyed.' }
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
    def set_lift_instructor
      @lift_instructor = LiftInstructor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lift_instructor_params
      params.require(:lift_instructor).permit(:name, :email, :phone, :lift_course_id)
    end
end
