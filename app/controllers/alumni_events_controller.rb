class AlumniEventsController < ApplicationController
  before_action :set_alumni_event, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  # GET /alumni_events
  # GET /alumni_events.json
  def index
    @alumni_events = AlumniEvent.all
  end

  # GET /alumni_events/1
  # GET /alumni_events/1.json
  def show
  end

  # GET /alumni_events/new
  def new
    @alumni_event = AlumniEvent.new
  end

  # GET /alumni_events/1/edit
  def edit
  end

  # POST /alumni_events
  # POST /alumni_events.json
  def create
    @alumni_event = AlumniEvent.new(alumni_event_params)

    respond_to do |format|
      if @alumni_event.save
        format.html { redirect_to alumni_events_url, notice: 'Alumni event was successfully created.' }
        format.json { render :show, status: :created, location: @alumni_event }
      else
        format.html { render :new }
        format.json { render json: @alumni_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alumni_events/1
  # PATCH/PUT /alumni_events/1.json
  def update
    respond_to do |format|
      if @alumni_event.update(alumni_event_params)
        format.html { redirect_to alumni_events_url, notice: 'Alumni event was successfully updated.' }
        format.json { render :show, status: :ok, location: @alumni_event }
      else
        format.html { render :edit }
        format.json { render json: @alumni_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumni_events/1
  # DELETE /alumni_events/1.json
  def destroy
    @alumni_event.destroy
    respond_to do |format|
      format.html { redirect_to alumni_events_url, notice: 'Alumni event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def resolve_layout
      case action_name
        when "index", "new", "create", "destroy", "edit"
          "dashboard"
        else
          "alumni"
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_alumni_event
      @alumni_event = AlumniEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alumni_event_params
      params.require(:alumni_event).permit(:title, :description, :location, :event_start, :event_end, :alumni_chapter_id)
    end
end
