require "test_helper"

class User::MypageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_mypage_index_url
    assert_response :success
  end

  test "should get edit" do
    get user_mypage_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_mypage_update_url
    assert_response :success
  end
end
