class BackgroundOptionsController < ApplicationController
  layout :resolve_layout
  before_action :set_background_option, only: [:show, :edit, :update, :destroy]

  # GET /background_options
  # GET /background_options.json
  def index
    @background_options = BackgroundOption.all
  end

  # GET /background_options/1
  # GET /background_options/1.json
  def show
  end

  # GET /background_options/new
  def new
    @background_option = BackgroundOption.new
  end

  # GET /background_options/1/edit
  def edit
  end

  # POST /background_options
  # POST /background_options.json
  def create
    @background_option = BackgroundOption.new(background_option_params)

    respond_to do |format|
      if @background_option.save
        format.html { redirect_to background_options_url, notice: 'Background option was successfully created.' }
        format.json { render :show, status: :created, location: @background_option }
      else
        format.html { render :new }
        format.json { render json: background_options_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /background_options/1
  # PATCH/PUT /background_options/1.json
  def update
    respond_to do |format|
      if @background_option.update(background_option_params)
        format.html { redirect_to background_options_url, notice: 'Background option was successfully updated.' }
        format.json { render :show, status: :ok, location: @background_option }
      else
        format.html { render :edit }
        format.json { render json: background_options_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /background_options/1
  # DELETE /background_options/1.json
  def destroy
    @background_option.destroy
    respond_to do |format|
      format.html { redirect_to background_options_url, notice: 'Background option was successfully destroyed.' }
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
    def set_background_option
      @background_option = BackgroundOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def background_option_params
      params.require(:background_option).permit(:option)
    end
end
