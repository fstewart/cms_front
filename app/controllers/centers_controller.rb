class CentersController < ApplicationController
  before_action :set_center, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  # GET /centers
  # GET /centers.json
  def index
    @centers = Center.all
  end

  # GET /centers/1
  # GET /centers/1.json
  def show
  end

  # GET /centers/new
  def new
    @center = Center.new
  end

  # GET /centers/1/edit
  def edit
  end

  # POST /centers
  # POST /centers.json
  def create
    @center = Center.new(center_params)

    respond_to do |format|
      if @center.save
        format.html { redirect_to @center, notice: 'Center was successfully created.' }
        format.json { render :show, status: :created, location: @center }
      else
        format.html { render :new }
        format.json { render json: @center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /centers/1
  # PATCH/PUT /centers/1.json
  def update
    respond_to do |format|
      if @center.update(center_params)
        format.html { redirect_to @center, notice: 'Center was successfully updated.' }
        format.json { render :show, status: :ok, location: @center }
      else
        format.html { render :edit }
        format.json { render json: @center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /centers/1
  # DELETE /centers/1.json
  def destroy
    @center.destroy
    respond_to do |format|
      format.html { redirect_to centers_url, notice: 'Center was successfully destroyed.' }
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
    def set_center
      @center = Center.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def center_params
      params.require(:center).permit(:unit_type_id, :name, :slug, :building_id, :phone, :fax, :office, :mailing_address, :po_box, :header_image, :user_id, :facebook, :linkedin, :twitter, :instagram, :snapchat, :vimeo, :youtube, :contact_name, :contact_email)
    end
end
