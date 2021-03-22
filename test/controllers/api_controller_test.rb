require "test_helper"

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get api_users_url
    assert_response :success
  end

  test "should get repositories" do
    get api_repositories_url
    assert_response :success
  end

  test "should get index" do
    get api_index_url
    assert_response :success
  end
end
