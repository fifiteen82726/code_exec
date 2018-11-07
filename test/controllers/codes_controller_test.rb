require 'test_helper'

class CodesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get codes_create_url
    assert_response :success
  end

end
