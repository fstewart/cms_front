class CldcController < ApplicationController

  layout :resolve_layout

  # GET /cldc_teams
  # GET /cldc_teams

  def index
    @page = Page.friendly.find("141")
    @sections = @page.sections.published.sorted
  end

  # GET /cldc_teams/1
  # GET /cldc_teams/1.json
  def show
  end

  # GET /cldc_teams/new
  def new
    @cldc_team = CldcTeam.new
    @page = Page.friendly.find("142")
    @sections = @page.sections.published.sorted
  end


  # POST /cldc_teams
  # POST /cldc_teams.json
  def create
    @cldc_team = CldcTeam.new(cldc_team_params)

    respond_to do |format|
      if @cldc_team.save
        format.html { redirect_to @cldc_team, notice: 'Cldc team was successfully created.' }
        format.json { render :show, status: :created, location: @cldc_team }
      else
        format.html { render :new }
        format.json { render json: @cldc_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cldc_teams/1
  # PATCH/PUT /cldc_teams/1.json
  def update
    respond_to do |format|
      if @cldc_team.update(cldc_team_params)
        format.html { redirect_to @cldc_team, notice: 'Cldc team was successfully updated.' }
        format.json { render :show, status: :ok, location: @cldc_team }
      else
        format.html { render :edit }
        format.json { render json: @cldc_team.errors, status: :unprocessable_entity }
      end
    end
  end


  private

    def resolve_layout
      case action_name
        when "index", "apply", "create"
          "application"
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_cldc_team
      @cldc_team = CldcTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cldc_team_params
      params.require(:cldc_team).permit(:team_name, :team_captain, :team_captain_email, :team_captain_phone, :second_member_name, :second_member_email, :third_member_name, :third_member_email, :advisor_title, :advisor_name, :advisor_phone, :advisor_email, :advisor_affiliation, :resume1, :resume2, :resume3)
    end
end
