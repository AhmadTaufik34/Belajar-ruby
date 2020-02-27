require 'test_helper'

class NamecontrollersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get namecontrollers_index_url
    assert_response :success
  end

end
