require "test_helper"

class User::MyFavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_my_favorites_index_url
    assert_response :success
  end
end
