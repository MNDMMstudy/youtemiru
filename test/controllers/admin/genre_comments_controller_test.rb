require "test_helper"

class Admin::GenreCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_genre_comments_index_url
    assert_response :success
  end

  test "should get update" do
    get admin_genre_comments_update_url
    assert_response :success
  end

  test "should get create" do
    get admin_genre_comments_create_url
    assert_response :success
  end

  test "should get new" do
    get admin_genre_comments_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_genre_comments_edit_url
    assert_response :success
  end
end
