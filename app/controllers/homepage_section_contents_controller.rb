class HomepageSectionContentsController < ApplicationController
  layout :resolve_layout
  before_action :set_homepage_section_content, only: [:show, :edit, :update, :destroy]

  # GET /homepage_section_contents
  # GET /homepage_section_contents.json
  def index
    @homepage_section_contents = HomepageSectionContent.includes(:background_option).all
  end

  # GET /homepage_section_contents/1
  # GET /homepage_section_contents/1.json
  def show
  end

  # GET /homepage_section_contents/new
  def new
    @homepage_section_content = HomepageSectionContent.new
  end

  # GET /homepage_section_contents/1/edit
  def edit
  end

  # POST /homepage_section_contents
  # POST /homepage_section_contents.json
  def create
    @homepage_section_content = HomepageSectionContent.new(homepage_section_content_params)

    respond_to do |format|
      if @homepage_section_content.save
        format.html { redirect_to homepage_index_path, notice: 'Homepage section content was successfully created.' }
        format.json { render :show, status: :created, location: @homepage_section_content }
      else
        format.html { render :new }
        format.json { render json: homepage_section_contents_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homepage_section_contents/1
  # PATCH/PUT /homepage_section_contents/1.json
  def update
    respond_to do |format|
      if @homepage_section_content.update(homepage_section_content_params)
        format.html { redirect_to homepage_index_path, notice: 'Homepage section content was successfully updated.' }
        format.json { render :show, status: :ok, location: @homepage_section_content }
      else
        format.html { render :edit }
        format.json { render json: homepage_index_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homepage_section_contents/1
  # DELETE /homepage_section_contents/1.json
  def destroy
    @homepage_section_content.destroy
    respond_to do |format|
      format.html { redirect_to homepage_index_path, notice: 'Homepage section content was successfully destroyed.' }
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
    def set_homepage_section_content
      @homepage_section_content = HomepageSectionContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homepage_section_content_params
      params.require(:homepage_section_content).permit(:priority, :title, :body, :background_image, :bg_image_option, :background_style, :is_published, :background_option_id, :display_title)
    end
end
