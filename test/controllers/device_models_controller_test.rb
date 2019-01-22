require 'test_helper'

class DeviceModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device_model = device_models(:one)
  end

  test "should get index" do
    get device_models_url
    assert_response :success
  end

  test "should get new" do
    get new_device_model_url
    assert_response :success
  end

  test "should create device_model" do
    assert_difference('DeviceModel.count') do
      post device_models_url, params: { device_model: { device_buy_back_price: @device_model.device_buy_back_price, device_carrier: @device_model.device_carrier, device_model: @device_model.device_model, device_repair_price: @device_model.device_repair_price, device_sale_price: @device_model.device_sale_price } }
    end

    assert_redirected_to device_model_url(DeviceModel.last)
  end

  test "should show device_model" do
    get device_model_url(@device_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_device_model_url(@device_model)
    assert_response :success
  end

  test "should update device_model" do
    patch device_model_url(@device_model), params: { device_model: { device_buy_back_price: @device_model.device_buy_back_price, device_carrier: @device_model.device_carrier, device_model: @device_model.device_model, device_repair_price: @device_model.device_repair_price, device_sale_price: @device_model.device_sale_price } }
    assert_redirected_to device_model_url(@device_model)
  end

  test "should destroy device_model" do
    assert_difference('DeviceModel.count', -1) do
      delete device_model_url(@device_model)
    end

    assert_redirected_to device_models_url
  end
end
