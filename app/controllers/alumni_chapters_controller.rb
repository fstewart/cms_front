class AlumniChaptersController < ApplicationController
  before_action :set_alumni_chapter, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  # GET /alumni_chapters
  # GET /alumni_chapters.json
  def index
    @alumni_chapters = AlumniChapter.all
  end

  # GET /alumni_chapters/1
  # GET /alumni_chapters/1.json
  def show
  end

  # GET /alumni_chapters/new
  def new
    @alumni_chapter = AlumniChapter.new
  end

  # GET /alumni_chapters/1/edit
  def edit
  end

  # POST /alumni_chapters
  # POST /alumni_chapters.json
  def create
    @alumni_chapter = AlumniChapter.new(alumni_chapter_params)

    respond_to do |format|
      if @alumni_chapter.save
        format.html { redirect_to alumni_chapters_url, notice: 'Alumni chapter was successfully created.' }
        format.json { render :show, status: :created, location: @alumni_chapter }
      else
        format.html { render :new }
        format.json { render json: @alumni_chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alumni_chapters/1
  # PATCH/PUT /alumni_chapters/1.json
  def update
    respond_to do |format|
      if @alumni_chapter.update(alumni_chapter_params)
        format.html { redirect_to alumni_chapters_url, notice: 'Alumni chapter was successfully updated.' }
        format.json { render :show, status: :ok, location: @alumni_chapter }
      else
        format.html { render :edit }
        format.json { render json: @alumni_chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumni_chapters/1
  # DELETE /alumni_chapters/1.json
  def destroy
    @alumni_chapter.destroy
    respond_to do |format|
      format.html { redirect_to alumni_chapters_url, notice: 'Alumni chapter was successfully destroyed.' }
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
    def set_alumni_chapter
      @alumni_chapter = AlumniChapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alumni_chapter_params
      params.require(:alumni_chapter).permit(:title, :address, :latitude, :longitude, :members, :active, :alumni_event_id, :contact)
    end
end
