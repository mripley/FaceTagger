require 'test_helper'

class TaggablesControllerTest < ActionController::TestCase
  setup do
    @taggable = taggables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taggables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taggable" do
    assert_difference('Taggable.count') do
      post :create, taggable: { img_url: @taggable.img_url }
    end

    assert_redirected_to taggable_path(assigns(:taggable))
  end

  test "should show taggable" do
    get :show, id: @taggable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taggable
    assert_response :success
  end

  test "should update taggable" do
    put :update, id: @taggable, taggable: { img_url: @taggable.img_url }
    assert_redirected_to taggable_path(assigns(:taggable))
  end

  test "should destroy taggable" do
    assert_difference('Taggable.count', -1) do
      delete :destroy, id: @taggable
    end

    assert_redirected_to taggables_path
  end
end
