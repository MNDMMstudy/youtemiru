require "test_helper"

class User::UserInfosControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get user_user_infos_edit_url
    assert_response :success
  end
end
