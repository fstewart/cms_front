class LiftCoursesController < ApplicationController
  layout :resolve_layout
  before_action :set_lift_course, only: [:show, :edit, :update, :destroy]

  # GET /lift_courses
  # GET /lift_courses.json
  def index
    @lift_courses = LiftCourse.all.order('start_date DESC')
  end

  # GET /lift_courses/1
  # GET /lift_courses/1.json
  def show
  end

  # GET /lift_courses/new
  def new
    @lift_course = LiftCourse.new
  end

  # GET /lift_courses/1/edit
  def edit
  end

  # POST /lift_courses
  # POST /lift_courses.json
  def create
    @lift_course = LiftCourse.new(lift_course_params)

    respond_to do |format|
      if @lift_course.save
        format.html { redirect_to lift_courses_url, notice: 'Lift course was successfully created.' }
        format.json { redirect_to lift_courses_url, status: :created, location: @lift_course }
      else
        format.html { render :new }
        format.json { render json: @lift_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lift_courses/1
  # PATCH/PUT /lift_courses/1.json
  def update
    respond_to do |format|
      if @lift_course.update(lift_course_params)
        format.html { redirect_to lift_courses_url, notice: 'Lift course was successfully updated.' }
        format.json { redirect_to lift_courses_url, status: :ok, location: @lift_course }
      else
        format.html { render :edit }
        format.json { render json: @lift_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lift_courses/1
  # DELETE /lift_courses/1.json
  def destroy
    @lift_course.destroy
    respond_to do |format|
      format.html { redirect_to lift_courses_url, notice: 'Lift course was successfully destroyed.' }
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
    def set_lift_course
      @lift_course = LiftCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lift_course_params
      params.require(:lift_course).permit(:session, :title, :description, :location_url, :status, :start_date, :end_date, :seats, :meeting_day, :meeting_time, :lift_location_id)
    end
end
