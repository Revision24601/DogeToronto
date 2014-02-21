require 'test_helper'

class DogesControllerTest < ActionController::TestCase
  setup do
    @doge = doges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doge" do
    assert_difference('Doge.count') do
      post :create, doge: {  }
    end

    assert_redirected_to doge_path(assigns(:doge))
  end

  test "should show doge" do
    get :show, id: @doge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doge
    assert_response :success
  end

  test "should update doge" do
    patch :update, id: @doge, doge: {  }
    assert_redirected_to doge_path(assigns(:doge))
  end

  test "should destroy doge" do
    assert_difference('Doge.count', -1) do
      delete :destroy, id: @doge
    end

    assert_redirected_to doges_path
  end
end
