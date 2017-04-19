class LiftSessionsController < ApplicationController
  layout :resolve_layout
  before_action :set_lift_session, only: [:show, :edit, :update, :destroy]

  # GET /lift_sessions
  # GET /lift_sessions.json
  def index
    @lift_sessions = LiftSession.all
  end

  # GET /lift_sessions/1
  # GET /lift_sessions/1.json
  def show
  end

  # GET /lift_sessions/new
  def new
    @lift_session = LiftSession.new
  end

  # GET /lift_sessions/1/edit
  def edit
  end

  # POST /lift_sessions
  # POST /lift_sessions.json
  def create
    @lift_session = LiftSession.new(lift_session_params)

    respond_to do |format|
      if @lift_session.save
        format.html { redirect_to @lift_session, notice: 'Lift session was successfully created.' }
        format.json { render :show, status: :created, location: @lift_session }
      else
        format.html { render :new }
        format.json { render json: @lift_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lift_sessions/1
  # PATCH/PUT /lift_sessions/1.json
  def update
    respond_to do |format|
      if @lift_session.update(lift_session_params)
        format.html { redirect_to @lift_session, notice: 'Lift session was successfully updated.' }
        format.json { render :show, status: :ok, location: @lift_session }
      else
        format.html { render :edit }
        format.json { render json: @lift_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lift_sessions/1
  # DELETE /lift_sessions/1.json
  def destroy
    @lift_session.destroy
    respond_to do |format|
      format.html { redirect_to lift_sessions_url, notice: 'Lift session was successfully destroyed.' }
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
    def set_lift_session
      @lift_session = LiftSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lift_session_params
      params.require(:lift_session).permit(:name)
    end
end
