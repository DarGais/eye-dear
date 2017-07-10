class ChannelsController < ApplicationController
  before_action :set_channel, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  # GET /channels
  # GET /channels.json
  def index
    @channels = current_user.channels
  end

  # GET /channels/1
  # GET /channels/1.json
  def show
  end

  # GET /channels/new
  def new
    @channel = current_user.channels.build
  end

  # GET /channels/1/edit
  def edit
  end

  # POST /channels
  # POST /channels.json
  def create
    @channel = Channel.new(channel_params)

    respond_to do |format|
      if @channel.save
        format.html { redirect_to @channel, notice: 'Channel was successfully created.' }
        format.json { render :show, status: :created, location: @channel }
      else
        format.html { render :new }
        format.json { render json: @channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /channels/1
  # PATCH/PUT /channels/1.json
  def update
    respond_to do |format|
      if @channel.update(channel_params)
        format.html { redirect_to @channel, notice: 'Channel was successfully updated.' }
        format.json { render :show, status: :ok, location: @channel }
      else
        format.html { render :edit }
        format.json { render json: @channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /channels/1
  # DELETE /channels/1.json
  def destroy
    @channel.destroy
    respond_to do |format|
      format.html { redirect_to channels_url, notice: 'Channel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Add value by API key
  def update_fields
    api_key = params[:api_key]
    unless api_key
      render(text: "404 not found API key", status: 404) and return
    end

    channel = Channel.find_by(api_key: params[:api_key])
    unless channel
      render(text: "401 unauthorized API key", status: 401) and return
    end

    channel.sensor_values.build(
      timestamp: Time.new,
      value1: params["field1"],
      value2: params["field2"],
      value3: params["field3"],
      value4: params["field4"],
      value5: params["field5"],
      value6: params["field6"],
      value7: params["field7"],
      value8: params["field8"]).save
    render(text: "200 everything's ok", status: 200)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_channel
      @channel = Channel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def channel_params
      params.require(:channel).permit(:name, :description, :field1_name, :field1_enable, :field2_name, :field2_enable, :field3_name, :field3_enable, :field4_name, :field4_enable, :field5_name, :field5_enable, :field6_name, :field6_enable, :field7_name, :field7_enable, :field8_name, :field8_enable, :api_key, :user_id)
    end
end
