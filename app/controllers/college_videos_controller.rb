class CollegeVideosController < ApplicationController
  layout :resolve_layout
  before_action :set_college_video, only: [:show, :edit, :update, :destroy]

  # GET /college_videos
  # GET /college_videos.json
  def index
    @college_videos = CollegeVideo.all
  end

  # GET /college_videos/1
  # GET /college_videos/1.json
  def show
    @college_video = CollegeVideo.all.find_by slug: (params[:id])
  end

  # GET /college_videos/new
  def new
    @college_video = CollegeVideo.new
  end

  # GET /college_videos/1/edit
  def edit
    @college_video = CollegeVideo.all.find_by slug: (params[:id])
  end

  # POST /college_videos
  # POST /college_videos.json
  def create
    @college_video = CollegeVideo.new(college_video_params)

    respond_to do |format|
      if @college_video.save
        format.html { redirect_to @college_video, notice: 'College video was successfully created.' }
        format.json { render :show, status: :created, location: @college_video }
      else
        format.html { render :new }
        format.json { render json: @college_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /college_videos/1
  # PATCH/PUT /college_videos/1.json
  def update
    respond_to do |format|
      if @college_video.update(college_video_params)
        format.html { redirect_to @college_video, notice: 'College video was successfully updated.' }
        format.json { render :show, status: :ok, location: @college_video }
      else
        format.html { render :edit }
        format.json { render json: @college_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /college_videos/1
  # DELETE /college_videos/1.json
  def destroy
    @college_video.destroy
    respond_to do |format|
      format.html { redirect_to college_videos_url, notice: 'College video was successfully destroyed.' }
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
    def set_college_video
      @college_video = CollegeVideo.find_by slug: (params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def college_video_params
      params.require(:college_video).permit(:name, :url)
    end
end
