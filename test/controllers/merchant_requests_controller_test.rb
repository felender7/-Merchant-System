require 'test_helper'

class MerchantRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @merchant_request = merchant_requests(:one)
  end

  test "should get index" do
    get merchant_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_merchant_request_url
    assert_response :success
  end

  test "should create merchant_request" do
    assert_difference('MerchantRequest.count') do
      post merchant_requests_url, params: { merchant_request: { merchant_type: @merchant_request.merchant_type, quantity: @merchant_request.quantity, slug: @merchant_request.slug } }
    end

    assert_redirected_to merchant_request_url(MerchantRequest.last)
  end

  test "should show merchant_request" do
    get merchant_request_url(@merchant_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_merchant_request_url(@merchant_request)
    assert_response :success
  end

  test "should update merchant_request" do
    patch merchant_request_url(@merchant_request), params: { merchant_request: { merchant_type: @merchant_request.merchant_type, quantity: @merchant_request.quantity, slug: @merchant_request.slug } }
    assert_redirected_to merchant_request_url(@merchant_request)
  end

  test "should destroy merchant_request" do
    assert_difference('MerchantRequest.count', -1) do
      delete merchant_request_url(@merchant_request)
    end

    assert_redirected_to merchant_requests_url
  end
end
