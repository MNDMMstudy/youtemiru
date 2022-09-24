require "test_helper"

class User::SentCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_sent_comments_index_url
    assert_response :success
  end

  test "should get show" do
    get user_sent_comments_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_sent_comments_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_sent_comments_update_url
    assert_response :success
  end

  test "should get create" do
    get user_sent_comments_create_url
    assert_response :success
  end

  test "should get new" do
    get user_sent_comments_new_url
    assert_response :success
  end
end
