require 'test_helper'

class PuppytimeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get dogs" do
    get :dogs
    assert_response :success
  end

end
