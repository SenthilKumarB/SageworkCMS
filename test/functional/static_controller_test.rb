require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get site_map" do
    get :site_map
    assert_response :success
  end

end
