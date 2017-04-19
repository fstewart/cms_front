class FooterLayoutsController < ApplicationController
  before_action :set_footer_layout, only: [:show, :edit, :update, :destroy]

  # GET /footer_layouts
  # GET /footer_layouts.json
  def index
    @footer_layouts = FooterLayout.all
  end

  # GET /footer_layouts/1
  # GET /footer_layouts/1.json
  def show
  end

  # GET /footer_layouts/new
  def new
    @footer_layout = FooterLayout.new
  end

  # GET /footer_layouts/1/edit
  def edit
  end

  # POST /footer_layouts
  # POST /footer_layouts.json
  def create
    @footer_layout = FooterLayout.new(footer_layout_params)

    respond_to do |format|
      if @footer_layout.save
        format.html { redirect_to @footer_layout, notice: 'Footer layout was successfully created.' }
        format.json { render :show, status: :created, location: @footer_layout }
      else
        format.html { render :new }
        format.json { render json: @footer_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /footer_layouts/1
  # PATCH/PUT /footer_layouts/1.json
  def update
    respond_to do |format|
      if @footer_layout.update(footer_layout_params)
        format.html { redirect_to @footer_layout, notice: 'Footer layout was successfully updated.' }
        format.json { render :show, status: :ok, location: @footer_layout }
      else
        format.html { render :edit }
        format.json { render json: @footer_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footer_layouts/1
  # DELETE /footer_layouts/1.json
  def destroy
    @footer_layout.destroy
    respond_to do |format|
      format.html { redirect_to footer_layouts_url, notice: 'Footer layout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_footer_layout
      @footer_layout = FooterLayout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def footer_layout_params
      params.require(:footer_layout).permit(:title, :desc, :status)
    end
end
