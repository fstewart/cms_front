class CesPregameRsvpsController < ApplicationController
  before_action :set_ces_pregame_rsvp, only: [:show, :edit, :update, :destroy]

  # GET /ces_pregame_rsvps
  # GET /ces_pregame_rsvps.json
  def index
    @ces_pregame_rsvps = CesPregameRsvp.all
  end

  # GET /ces_pregame_rsvps/1
  # GET /ces_pregame_rsvps/1.json
  def show
  end

  # GET /ces_pregame_rsvps/new
  def new
    @ces_pregame_rsvp = CesPregameRsvp.new
  end

  # GET /ces_pregame_rsvps/1/edit
  def edit
  end

  # POST /ces_pregame_rsvps
  # POST /ces_pregame_rsvps.json
  def create
    @ces_pregame_rsvp = CesPregameRsvp.new(ces_pregame_rsvp_params)

    respond_to do |format|
      if @ces_pregame_rsvp.save
        format.html { redirect_to @ces_pregame_rsvp, notice: 'Ces pregame rsvp was successfully created.' }
        format.json { render :show, status: :created, location: @ces_pregame_rsvp }
      else
        format.html { render :new }
        format.json { render json: @ces_pregame_rsvp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ces_pregame_rsvps/1
  # PATCH/PUT /ces_pregame_rsvps/1.json
  def update
    respond_to do |format|
      if @ces_pregame_rsvp.update(ces_pregame_rsvp_params)
        format.html { redirect_to @ces_pregame_rsvp, notice: 'Ces pregame rsvp was successfully updated.' }
        format.json { render :show, status: :ok, location: @ces_pregame_rsvp }
      else
        format.html { render :edit }
        format.json { render json: @ces_pregame_rsvp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ces_pregame_rsvps/1
  # DELETE /ces_pregame_rsvps/1.json
  def destroy
    @ces_pregame_rsvp.destroy
    respond_to do |format|
      format.html { redirect_to ces_pregame_rsvps_url, notice: 'Ces pregame rsvp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ces_pregame_rsvp
      @ces_pregame_rsvp = CesPregameRsvp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ces_pregame_rsvp_params
      params.require(:ces_pregame_rsvp).permit(:game1_comp_tickets, :game1_paid_tickets, :game1_child_tickets, :game2_comp_tickets, :game2_paid_tickets, :game2_child_tickets, :game3_comp_tickets, :game3_paid_tickets, :game3_child_tickets, :game4_comp_tickets, :game4_paid_tickets, :game4_child_tickets, :game5_comp_tickets, :game5_paid_tickets, :game5_child_tickets, :game6_comp_tickets, :game6_paid_tickets, :game6_child_tickets, :game7_comp_tickets, :game7_paid_tickets, :game7_child_tickets, :first_name, :last_name, :phone, :email)
    end
end
