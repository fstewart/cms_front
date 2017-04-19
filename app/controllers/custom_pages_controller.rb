class CustomPagesController < ApplicationController
  before_action :set_custom_page, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  # GET /custom_pages
  # GET /custom_pages.json
  def index
    @custom_pages = CustomPage.all
  end

  # GET /custom_pages/1
  # GET /custom_pages/1.json
  def show
  end

  # GET /custom_pages/new
  def new
    @custom_page = CustomPage.new
  end

  # GET /custom_pages/1/edit
  def edit
  end

  # POST /custom_pages
  # POST /custom_pages.json
  def create
    @custom_page = CustomPage.new(custom_page_params)

    respond_to do |format|
      if @custom_page.save
        format.html { redirect_to @custom_page, notice: 'Custom page was successfully created.' }
        format.json { render :show, status: :created, location: @custom_page }
      else
        format.html { render :new }
        format.json { render json: @custom_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_pages/1
  # PATCH/PUT /custom_pages/1.json
  def update
    respond_to do |format|
      if @custom_page.update(custom_page_params)
        format.html { redirect_to @custom_page, notice: 'Custom page was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_page }
      else
        format.html { render :edit }
        format.json { render json: @custom_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_pages/1
  # DELETE /custom_pages/1.json
  def destroy
    @custom_page.destroy
    respond_to do |format|
      format.html { redirect_to custom_pages_url, notice: 'Custom page was successfully destroyed.' }
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
    def set_custom_page
      @custom_page = CustomPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_page_params
      params.require(:custom_page).permit(:parent_id, :unit_id, :title, :page_heading, :parent_id, :url, :external_url, :description, :meta_title, :meta_description, :meta_keyword, :status)
    end
end
