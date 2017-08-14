require 'test_helper'

class MyQueriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_query = my_queries(:one)
  end

  test "should get index" do
    get my_queries_url
    assert_response :success
  end

  test "should get new" do
    get new_my_query_url
    assert_response :success
  end

  test "should create my_query" do
    assert_difference('MyQuery.count') do
      post my_queries_url, params: { my_query: {  } }
    end

    assert_redirected_to my_query_url(MyQuery.last)
  end

  test "should show my_query" do
    get my_query_url(@my_query)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_query_url(@my_query)
    assert_response :success
  end

  test "should update my_query" do
    patch my_query_url(@my_query), params: { my_query: {  } }
    assert_redirected_to my_query_url(@my_query)
  end

  test "should destroy my_query" do
    assert_difference('MyQuery.count', -1) do
      delete my_query_url(@my_query)
    end

    assert_redirected_to my_queries_url
  end
end
