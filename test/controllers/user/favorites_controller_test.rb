require "test_helper"

class User::FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_favorites_index_url
    assert_response :success
  end

  test "should get show" do
    get user_favorites_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_favorites_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_favorites_update_url
    assert_response :success
  end

  test "should get create" do
    get user_favorites_create_url
    assert_response :success
  end

  test "should get new" do
    get user_favorites_new_url
    assert_response :success
  end

  test "should get destroy" do
    get user_favorites_destroy_url
    assert_response :success
  end
end
