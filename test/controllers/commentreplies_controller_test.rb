require 'test_helper'

class CommentrepliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commentreply = commentreplies(:one)
  end

  test "should get index" do
    get commentreplies_url
    assert_response :success
  end

  test "should get new" do
    get new_commentreply_url
    assert_response :success
  end

  test "should create commentreply" do
    assert_difference('Commentreply.count') do
      post commentreplies_url, params: { commentreply: { body: @commentreply.body, comment_id: @commentreply.comment_id, user_id: @commentreply.user_id } }
    end

    assert_redirected_to commentreply_url(Commentreply.last)
  end

  test "should show commentreply" do
    get commentreply_url(@commentreply)
    assert_response :success
  end

  test "should get edit" do
    get edit_commentreply_url(@commentreply)
    assert_response :success
  end

  test "should update commentreply" do
    patch commentreply_url(@commentreply), params: { commentreply: { body: @commentreply.body, comment_id: @commentreply.comment_id, user_id: @commentreply.user_id } }
    assert_redirected_to commentreply_url(@commentreply)
  end

  test "should destroy commentreply" do
    assert_difference('Commentreply.count', -1) do
      delete commentreply_url(@commentreply)
    end

    assert_redirected_to commentreplies_url
  end
end
