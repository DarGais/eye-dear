require 'test_helper'

class SensorValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sensor_value = sensor_values(:one)
  end

  test "should get index" do
    get sensor_values_url
    assert_response :success
  end

  test "should get new" do
    get new_sensor_value_url
    assert_response :success
  end

  test "should create sensor_value" do
    assert_difference('SensorValue.count') do
      post sensor_values_url, params: { sensor_value: { channel_id: @sensor_value.channel_id, timestamp: @sensor_value.timestamp, value1: @sensor_value.value1, value2: @sensor_value.value2, value3: @sensor_value.value3, value4: @sensor_value.value4, value5: @sensor_value.value5, value6: @sensor_value.value6, value7: @sensor_value.value7, value8: @sensor_value.value8 } }
    end

    assert_redirected_to sensor_value_url(SensorValue.last)
  end

  test "should show sensor_value" do
    get sensor_value_url(@sensor_value)
    assert_response :success
  end

  test "should get edit" do
    get edit_sensor_value_url(@sensor_value)
    assert_response :success
  end

  test "should update sensor_value" do
    patch sensor_value_url(@sensor_value), params: { sensor_value: { channel_id: @sensor_value.channel_id, timestamp: @sensor_value.timestamp, value1: @sensor_value.value1, value2: @sensor_value.value2, value3: @sensor_value.value3, value4: @sensor_value.value4, value5: @sensor_value.value5, value6: @sensor_value.value6, value7: @sensor_value.value7, value8: @sensor_value.value8 } }
    assert_redirected_to sensor_value_url(@sensor_value)
  end

  test "should destroy sensor_value" do
    assert_difference('SensorValue.count', -1) do
      delete sensor_value_url(@sensor_value)
    end

    assert_redirected_to sensor_values_url
  end
end
