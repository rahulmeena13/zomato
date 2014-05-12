require 'test_helper'

class CitiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get list_restaurants" do
    get :list_restaurants
    assert_response :success
  end

end
