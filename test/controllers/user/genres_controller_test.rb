require "test_helper"

class User::GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get genre" do
    get user_genres_genre_url
    assert_response :success
  end
end
