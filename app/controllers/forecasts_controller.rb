class ForecastsController < ApplicationController
  before_action :set_forecast, only: [:show, :edit, :update, :destroy]

  # GET /forecasts
  # GET /forecasts.json
  def index
    @forecasts = Forecast.all
  end

  # GET /forecasts/1
  # GET /forecasts/1.json
  def show
    require 'open_weather'
    options = { units: 'imperial', APPID: '4d4bb91d38b0ee836ccbdfdbfff74457' }
    @data =  OpenWeather::Current.city("Tuscaoosa, AL", options)
    @weather_data = @data
    #@weather = @weather_data['weather'][0]
    @weather = @weather_data
    @icon = @weather_data['weather'][0]['icon']
    @temp = @weather_data['main']['temp']
    @description = @weather_data['weather'][0]['description']
    
  end

  # GET /forecasts/new
  def new
    @forecast = Forecast.new
  end

  # GET /forecasts/1/edit
  def edit
  end

  # POST /forecasts
  # POST /forecasts.json
  def create
    @forecast = Forecast.new(forecast_params)

    respond_to do |format|
      if @forecast.save
        format.html { redirect_to @forecast, notice: 'Forecast was successfully created.' }
        format.json { render :show, status: :created, location: @forecast }
      else
        format.html { render :new }
        format.json { render json: @forecast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forecasts/1
  # PATCH/PUT /forecasts/1.json
  def update
    respond_to do |format|
      if @forecast.update(forecast_params)
        format.html { redirect_to @forecast, notice: 'Forecast was successfully updated.' }
        format.json { render :show, status: :ok, location: @forecast }
      else
        format.html { render :edit }
        format.json { render json: @forecast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forecasts/1
  # DELETE /forecasts/1.json
  def destroy
    @forecast.destroy
    respond_to do |format|
      format.html { redirect_to forecasts_url, notice: 'Forecast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forecast
      @forecast = Forecast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forecast_params
      params.require(:forecast).permit(:lat, :lng)
    end
end