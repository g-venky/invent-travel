require 'test_helper'

class MyDoubtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_doubt = my_doubts(:one)
  end

  test "should get index" do
    get my_doubts_url
    assert_response :success
  end

  test "should get new" do
    get new_my_doubt_url
    assert_response :success
  end

  test "should create my_doubt" do
    assert_difference('MyDoubt.count') do
      post my_doubts_url, params: { my_doubt: { destination: @my_doubt.destination, doubt_details: @my_doubt.doubt_details } }
    end

    assert_redirected_to my_doubt_url(MyDoubt.last)
  end

  test "should show my_doubt" do
    get my_doubt_url(@my_doubt)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_doubt_url(@my_doubt)
    assert_response :success
  end

  test "should update my_doubt" do
    patch my_doubt_url(@my_doubt), params: { my_doubt: { destination: @my_doubt.destination, doubt_details: @my_doubt.doubt_details } }
    assert_redirected_to my_doubt_url(@my_doubt)
  end

  test "should destroy my_doubt" do
    assert_difference('MyDoubt.count', -1) do
      delete my_doubt_url(@my_doubt)
    end

    assert_redirected_to my_doubts_url
  end
end
