require 'test_helper'

class GeneratorControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get generate" do
    get :generate
    assert_response :success
  end

end
