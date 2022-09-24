require "test_helper"

class User::ReportCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get check" do
    get user_report_comments_check_url
    assert_response :success
  end
end
