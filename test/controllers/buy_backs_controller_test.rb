require 'test_helper'

class BuyBacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buy_back = buy_backs(:one)
  end

  test "should get index" do
    get buy_backs_url
    assert_response :success
  end

  test "should get new" do
    get new_buy_back_url
    assert_response :success
  end

  test "should create buy_back" do
    assert_difference('BuyBack.count') do
      post buy_backs_url, params: { buy_back: { address: @buy_back.address, address_two: @buy_back.address_two, city: @buy_back.city, drive_license: @buy_back.drive_license, email: @buy_back.email, first_name: @buy_back.first_name, last_name: @buy_back.last_name, middle_name: @buy_back.middle_name, state: @buy_back.state, zip_code: @buy_back.zip_code } }
    end

    assert_redirected_to buy_back_url(BuyBack.last)
  end

  test "should show buy_back" do
    get buy_back_url(@buy_back)
    assert_response :success
  end

  test "should get edit" do
    get edit_buy_back_url(@buy_back)
    assert_response :success
  end

  test "should update buy_back" do
    patch buy_back_url(@buy_back), params: { buy_back: { address: @buy_back.address, address_two: @buy_back.address_two, city: @buy_back.city, drive_license: @buy_back.drive_license, email: @buy_back.email, first_name: @buy_back.first_name, last_name: @buy_back.last_name, middle_name: @buy_back.middle_name, state: @buy_back.state, zip_code: @buy_back.zip_code } }
    assert_redirected_to buy_back_url(@buy_back)
  end

  test "should destroy buy_back" do
    assert_difference('BuyBack.count', -1) do
      delete buy_back_url(@buy_back)
    end

    assert_redirected_to buy_backs_url
  end
end
