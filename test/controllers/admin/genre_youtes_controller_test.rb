require "test_helper"

class Admin::GenreYoutesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_genre_youtes_index_url
    assert_response :success
  end

  test "should get update" do
    get admin_genre_youtes_update_url
    assert_response :success
  end

  test "should get create" do
    get admin_genre_youtes_create_url
    assert_response :success
  end

  test "should get new" do
    get admin_genre_youtes_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_genre_youtes_edit_url
    assert_response :success
  end
end
