class CollegeEventsController < ApplicationController
  before_action :set_college_event, only: [:show, :edit, :update, :destroy]

  # GET /college_events
  # GET /college_events.json
  def index
    @college_events = CollegeEvent.all
  end

  # GET /college_events/1
  # GET /college_events/1.json
  def show
  end

  # GET /college_events/new
  def new
    @college_event = CollegeEvent.new
  end

  # GET /college_events/1/edit
  def edit
  end

  # POST /college_events
  # POST /college_events.json
  def create
    @college_event = CollegeEvent.new(college_event_params)

    respond_to do |format|
      if @college_event.save
        format.html { redirect_to @college_event, notice: 'College event was successfully created.' }
        format.json { render :show, status: :created, location: @college_event }
      else
        format.html { render :new }
        format.json { render json: @college_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /college_events/1
  # PATCH/PUT /college_events/1.json
  def update
    respond_to do |format|
      if @college_event.update(college_event_params)
        format.html { redirect_to @college_event, notice: 'College event was successfully updated.' }
        format.json { render :show, status: :ok, location: @college_event }
      else
        format.html { render :edit }
        format.json { render json: @college_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /college_events/1
  # DELETE /college_events/1.json
  def destroy
    @college_event.destroy
    respond_to do |format|
      format.html { redirect_to college_events_url, notice: 'College event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_college_event
      @college_event = CollegeEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def college_event_params
      params.require(:college_event).permit(:title, :desc, :department_id)
    end
end
