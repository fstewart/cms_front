class CesEventsController < ApplicationController
  layout :resolve_layout
  before_action :set_ces_event, only: [:show, :edit, :update, :destroy]

  # GET /ces_events
  # GET /ces_events.json
  def index
    @ces_events = CesEvent.all
  end

  # GET /ces_events/1
  # GET /ces_events/1.json
  def show
  end

  # GET /ces_events/new
  def new
    @ces_event = CesEvent.new
  end

  # GET /ces_events/1/edit
  def edit
  end

  # POST /ces_events
  # POST /ces_events.json
  def create
    @ces_event = CesEvent.new(ces_event_params)

    respond_to do |format|
      if @ces_event.save
        format.html { redirect_to @ces_event, notice: 'Ces event was successfully created.' }
        format.json { render :show, status: :created, location: @ces_event }
      else
        format.html { render :new }
        format.json { render json: @ces_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ces_events/1
  # PATCH/PUT /ces_events/1.json
  def update
    respond_to do |format|
      if @ces_event.update(ces_event_params)
        format.html { redirect_to @ces_event, notice: 'Ces event was successfully updated.' }
        format.json { render :show, status: :ok, location: @ces_event }
      else
        format.html { render :edit }
        format.json { render json: @ces_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ces_events/1
  # DELETE /ces_events/1.json
  def destroy
    @ces_event.destroy
    respond_to do |format|
      format.html { redirect_to ces_events_url, notice: 'Ces event was successfully destroyed.' }
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
    def set_ces_event
      @ces_event = CesEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ces_event_params
      params.require(:ces_event).permit(:title, :description, :ces_promo,
                    ces_event_reservations_attributes: [:id, :title, :comp_tickets, :paid_adult_tickets, :paid_child_tickets, :_destroy])
    end
end
