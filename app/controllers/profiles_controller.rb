class ProfilesController < ApplicationController
  #before_action :set_profile, only: [:show, :edit, :update, :destroy]
  #helper_method :sort_column, :sort_direction
  layout :resolve_layout

  # GET /profiles
  # GET /profiles.json
  #def index
  #  if params[:expertise]
  #    @profiles = User.tagged_with(params[:expertise])
  #  elsif params[:search]
  #    @profiles = Profile.search(params[:search])
  #  else
  #    @profiles = Profile.order("#{sort_column} #{sort_direction}")
  #  end
  #end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @user = User.find_by username: params[:username]
  end

  # GET /profiles/new
  #def new
  #  @profile = Profile.new
  #end

  # GET /profiles/1/edit
  def edit
    @user = current_user
  end

  # POST /profiles
  # POST /profiles.json
  #def create
  #  @profile = Profile.new(profile_params)


  #  respond_to do |format|
  #    if @profile.save
  #      format.html { redirect_to profiles_url, notice: 'Profile was successfully created.' }
  #      format.json { render :show, status: :created, location: @profile }
  #    else
  #      format.html { render :new }
  #      format.json { render json: profiles_url.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end


  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    @user = current_user

    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profile_path @user.username, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: profiles_url.errors, status: :unprocessable_entity }
      end
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

  def sortable_columns
    ["department" "type" "name"]
  end

  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "department_id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:user).permit(:role)
    end
end
