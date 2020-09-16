require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    get "/api/v1/users/new"
    assert_response :success
  end

  test "should get index" do
    get "/api/v1/users/index"
    assert_response :success
  end

end
