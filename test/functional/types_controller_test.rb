require 'test_helper'

class TypesControllerTest < ActionController::TestCase
  setup do
    @type = types(:one)
	@update = {   # @update:  parametros diferentes
      :name         => 'AnotherType',
      :description  => 'AnotherText',
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type" do
    assert_difference('Type.count') do
      post :create, type: @update
    end

    assert_redirected_to type_path(assigns(:type))
  end

  test "should show type" do
    get :show, id: @type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type
    assert_response :success
  end

  test "should update type" do
    put :update, id: @type, type: @type.attributes
    assert_redirected_to type_path(assigns(:type))
  end

  test "should destroy type" do
    assert_difference('Type.count', -1) do
      delete :destroy, id: @type
    end

    assert_redirected_to types_path
  end
end
