require "test_helper"

class User::ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get check" do
    get user_reports_check_url
    assert_response :success
  end
end
