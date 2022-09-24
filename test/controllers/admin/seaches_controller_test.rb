require "test_helper"

class Admin::SeachesControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get admin_seaches_search_url
    assert_response :success
  end
end
