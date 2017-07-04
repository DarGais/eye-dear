class SensorValuesController < ApplicationController
  before_action :set_sensor_value, only: [:show, :edit, :update, :destroy]

  # GET /sensor_values
  # GET /sensor_values.json
  def index
    @sensor_values = SensorValue.all
  end

  # GET /sensor_values/1
  # GET /sensor_values/1.json
  def show
  end

  # GET /sensor_values/new
  def new
    @sensor_value = SensorValue.new
  end

  # GET /sensor_values/1/edit
  def edit
  end

  # POST /sensor_values
  # POST /sensor_values.json
  def create
    @sensor_value = SensorValue.new(sensor_value_params)

    respond_to do |format|
      if @sensor_value.save
        format.html { redirect_to @sensor_value, notice: 'Sensor value was successfully created.' }
        format.json { render :show, status: :created, location: @sensor_value }
      else
        format.html { render :new }
        format.json { render json: @sensor_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensor_values/1
  # PATCH/PUT /sensor_values/1.json
  def update
    respond_to do |format|
      if @sensor_value.update(sensor_value_params)
        format.html { redirect_to @sensor_value, notice: 'Sensor value was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor_value }
      else
        format.html { render :edit }
        format.json { render json: @sensor_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensor_values/1
  # DELETE /sensor_values/1.json
  def destroy
    @sensor_value.destroy
    respond_to do |format|
      format.html { redirect_to sensor_values_url, notice: 'Sensor value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor_value
      @sensor_value = SensorValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sensor_value_params
      params.require(:sensor_value).permit(:value1, :value2, :value3, :value4, :value5, :value6, :value7, :value8, :timestamp, :channel_id)
    end
end
