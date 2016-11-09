require 'test_helper'

class StaticPAgesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_p_ages_home_url
    assert_response :success
  end

  test "should get help" do
    get static_p_ages_help_url
    assert_response :success
  end

end
