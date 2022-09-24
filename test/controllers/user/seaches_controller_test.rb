require "test_helper"

class User::SeachesControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get user_seaches_search_url
    assert_response :success
  end
end
