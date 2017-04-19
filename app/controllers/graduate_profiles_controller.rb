class GraduateProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_graduate_profile, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  # GET /graduate_profiles
  # GET /graduate_profiles.json
  def index
    @graduate_profiles = GraduateProfile.all
  end

  # GET /graduate_profiles/1
  # GET /graduate_profiles/1.json
  def show
  end

  # GET /graduate_profiles/new
  def new
    @graduate_profile = GraduateProfile.new
  end

  # GET /graduate_profiles/1/edit
  def edit
  end

  # POST /graduate_profiles
  # POST /graduate_profiles.json
  def create
    @graduate_profile = GraduateProfile.new(graduate_profile_params)

    respond_to do |format|
      if @graduate_profile.save
        format.html { redirect_to @graduate_profile, notice: 'Graduate profile was successfully created.' }
        format.json { render :show, status: :created, location: @graduate_profile }
      else
        format.html { render :new }
        format.json { render json: @graduate_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graduate_profiles/1
  # PATCH/PUT /graduate_profiles/1.json
  def update
    respond_to do |format|
      if @graduate_profile.update(graduate_profile_params)
        format.html { redirect_to @graduate_profile, notice: 'Graduate profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @graduate_profile }
      else
        format.html { render :edit }
        format.json { render json: @graduate_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graduate_profiles/1
  # DELETE /graduate_profiles/1.json
  def destroy
    @graduate_profile.destroy
    respond_to do |format|
      format.html { redirect_to graduate_profiles_url, notice: 'Graduate profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def resolve_layout
      case action_name
        when "index", "new", "create", "edit", "destroy"
          "dashboard"
        else
          "application"
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_graduate_profile
      @graduate_profile = GraduateProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graduate_profile_params
      params.require(:graduate_profile).permit(:first_name, :middle_initial, :last_name, :nickname, :email, :phone, :hometown, :candidate_type, :class, :ug_school, :ug_year, :work_experience, :activities_honors, :internship, :cskills, :avatar, :cv, :status, :registered)
    end
end
