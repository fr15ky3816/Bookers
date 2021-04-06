require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get homes_top_url
    assert_response :success
  end

  test "should get start" do
    get homes_start_url
    assert_response :success
  end

  test "should get back" do
    get homes_back_url
    assert_response :success
  end

end
