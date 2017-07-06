=begin
require 'test_helper'

class ChannelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @channel = channels(:one)
  end

  test "should get index" do
    get channels_url
    assert_response :success
  end

  test "should get new" do
    get new_channel_url
    assert_response :success
  end

  test "should create channel" do
    assert_difference('Channel.count') do
      post channels_url, params: { channel: { api_key: @channel.api_key, description: @channel.description, field1_enable: @channel.field1_enable, field1_name: @channel.field1_name, field2_enable: @channel.field2_enable, field2_name: @channel.field2_name, field3_enable: @channel.field3_enable, field3_name: @channel.field3_name, field4_enable: @channel.field4_enable, field4_name: @channel.field4_name, field5_enable: @channel.field5_enable, field5_name: @channel.field5_name, field6_enable: @channel.field6_enable, field6_name: @channel.field6_name, field7_enable: @channel.field7_enable, field7_name: @channel.field7_name, field8_enable: @channel.field8_enable, field8_name: @channel.field8_name, name: @channel.name, user_id: @channel.user_id } }
    end

    assert_redirected_to channel_url(Channel.last)
  end

  test "should show channel" do
    get channel_url(@channel)
    assert_response :success
  end

  test "should get edit" do
    get edit_channel_url(@channel)
    assert_response :success
  end

  test "should update channel" do
    patch channel_url(@channel), params: { channel: { api_key: @channel.api_key, description: @channel.description, field1_enable: @channel.field1_enable, field1_name: @channel.field1_name, field2_enable: @channel.field2_enable, field2_name: @channel.field2_name, field3_enable: @channel.field3_enable, field3_name: @channel.field3_name, field4_enable: @channel.field4_enable, field4_name: @channel.field4_name, field5_enable: @channel.field5_enable, field5_name: @channel.field5_name, field6_enable: @channel.field6_enable, field6_name: @channel.field6_name, field7_enable: @channel.field7_enable, field7_name: @channel.field7_name, field8_enable: @channel.field8_enable, field8_name: @channel.field8_name, name: @channel.name, user_id: @channel.user_id } }
    assert_redirected_to channel_url(@channel)
  end

  test "should destroy channel" do
    assert_difference('Channel.count', -1) do
      delete channel_url(@channel)
    end

    assert_redirected_to channels_url
  end
end
=end