require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get idex" do
    get welcome_idex_url
    assert_response :success
  end

end
