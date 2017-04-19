class HomepageCarouselsController < ApplicationController
  layout :resolve_layout
  before_action :set_homepage_carousel, only: [:show, :edit, :update, :destroy]

  # GET /homepage_carousels
  # GET /homepage_carousels.json
  def index
    @homepage_carousels = HomepageCarousel.all
  end

  # GET /homepage_carousels/1
  # GET /homepage_carousels/1.json
  def show
  end

  # GET /homepage_carousels/new
  def new
    @homepage_carousel = HomepageCarousel.new
  end

  # GET /homepage_carousels/1/edit
  def edit
  end

  # POST /homepage_carousels
  # POST /homepage_carousels.json
  def create
    @homepage_carousel = HomepageCarousel.new(homepage_carousel_params)

    respond_to do |format|
      if @homepage_carousel.save
        format.html { redirect_to homepage_index_path, notice: 'Homepage carousel was successfully created.' }
        format.json { render :show, status: :created, location: @homepage_carousel }
      else
        format.html { render :new }
        format.json { render json: @homepage_carousel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homepage_carousels/1
  # PATCH/PUT /homepage_carousels/1.json
  def update
    respond_to do |format|
      if @homepage_carousel.update(homepage_carousel_params)
        format.html { redirect_to homepage_index_path, notice: 'Homepage carousel was successfully updated.' }
        format.json { render :show, status: :ok, location: @homepage_carousel }
      else
        format.html { render :edit }
        format.json { render json: @homepage_carousel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homepage_carousels/1
  # DELETE /homepage_carousels/1.json
  def destroy
    @homepage_carousel.destroy
    respond_to do |format|
      format.html { redirect_to homepage_index_path, notice: 'Homepage carousel was successfully destroyed.' }
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
    def set_homepage_carousel
      @homepage_carousel = HomepageCarousel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homepage_carousel_params
      params.require(:homepage_carousel).permit(:title, :body, :image, :priority, :video, :url, :is_published)
    end
end
