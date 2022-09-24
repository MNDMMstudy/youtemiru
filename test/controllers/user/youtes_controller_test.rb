require "test_helper"

class User::YoutesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_youtes_index_url
    assert_response :success
  end

  test "should get show" do
    get user_youtes_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_youtes_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_youtes_update_url
    assert_response :success
  end

  test "should get create" do
    get user_youtes_create_url
    assert_response :success
  end

  test "should get new" do
    get user_youtes_new_url
    assert_response :success
  end
end
