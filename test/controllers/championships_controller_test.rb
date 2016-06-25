require 'test_helper'

class ChampionshipsControllerTest < ActionController::TestCase
  setup do
    @championship = championships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:championships)
  end

  test "should create championship" do
    assert_difference('Championship.count') do
      post :create, championship: { name: @championship.name }
    end

    assert_response 201
  end

  test "should show championship" do
    get :show, id: @championship
    assert_response :success
  end

  test "should update championship" do
    put :update, id: @championship, championship: { name: @championship.name }
    assert_response 204
  end

  test "should destroy championship" do
    assert_difference('Championship.count', -1) do
      delete :destroy, id: @championship
    end

    assert_response 204
  end
end
