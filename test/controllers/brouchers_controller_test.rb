require 'test_helper'

class BrouchersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @broucher = brouchers(:one)
  end

  test "should get index" do
    get brouchers_url
    assert_response :success
  end

  test "should get new" do
    get new_broucher_url
    assert_response :success
  end

  test "should create broucher" do
    assert_difference('Broucher.count') do
      post brouchers_url, params: { broucher: {  } }
    end

    assert_redirected_to broucher_url(Broucher.last)
  end

  test "should show broucher" do
    get broucher_url(@broucher)
    assert_response :success
  end

  test "should get edit" do
    get edit_broucher_url(@broucher)
    assert_response :success
  end

  test "should update broucher" do
    patch broucher_url(@broucher), params: { broucher: {  } }
    assert_redirected_to broucher_url(@broucher)
  end

  test "should destroy broucher" do
    assert_difference('Broucher.count', -1) do
      delete broucher_url(@broucher)
    end

    assert_redirected_to brouchers_url
  end
end
