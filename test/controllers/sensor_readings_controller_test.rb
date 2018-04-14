require 'test_helper'

class SensorReadingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sensor_reading = sensor_readings(:one)
  end

  test "should get index" do
    get sensor_readings_url
    assert_response :success
  end

  test "should get new" do
    get new_sensor_reading_url
    assert_response :success
  end

  test "should create sensor_reading" do
    assert_difference('SensorReading.count') do
      post sensor_readings_url, params: { sensor_reading: { infrared: @sensor_reading.infrared, light: @sensor_reading.light, motion: @sensor_reading.motion, temperature: @sensor_reading.temperature } }
    end

    assert_redirected_to sensor_reading_url(SensorReading.last)
  end

  test "should show sensor_reading" do
    get sensor_reading_url(@sensor_reading)
    assert_response :success
  end

  test "should get edit" do
    get edit_sensor_reading_url(@sensor_reading)
    assert_response :success
  end

  test "should update sensor_reading" do
    patch sensor_reading_url(@sensor_reading), params: { sensor_reading: { infrared: @sensor_reading.infrared, light: @sensor_reading.light, motion: @sensor_reading.motion, temperature: @sensor_reading.temperature } }
    assert_redirected_to sensor_reading_url(@sensor_reading)
  end

  test "should destroy sensor_reading" do
    assert_difference('SensorReading.count', -1) do
      delete sensor_reading_url(@sensor_reading)
    end

    assert_redirected_to sensor_readings_url
  end
end
