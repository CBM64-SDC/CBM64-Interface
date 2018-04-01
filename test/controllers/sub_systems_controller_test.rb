require 'test_helper'

class SubSystemsControllerTest < ActionDispatch::IntegrationTest
  test "should get laneline_detection" do
    get sub_systems_laneline_detection_url
    assert_response :success
  end

  test "should get steering_control" do
    get sub_systems_steering_control_url
    assert_response :success
  end

  test "should get traffic_sign_recognition" do
    get sub_systems_traffic_sign_recognition_url
    assert_response :success
  end

  test "should get vehicle_detection" do
    get sub_systems_vehicle_detection_url
    assert_response :success
  end

end
