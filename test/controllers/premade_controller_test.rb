require 'test_helper'

class PremadeControllerTest < ActionDispatch::IntegrationTest
  test "should get dogs" do
    get premade_dogs_url
    assert_response :success
  end

end
