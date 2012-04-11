require 'test_helper'

class PermissionTypesControllerTest < ActionController::TestCase
  setup do
    @permission_type = permission_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:permission_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create permission_type" do
    assert_difference('PermissionType.count') do
      post :create, permission_type: { for: @permission_type.for, key: @permission_type.key, type: @permission_type.type }
    end

    assert_redirected_to permission_type_path(assigns(:permission_type))
  end

  test "should show permission_type" do
    get :show, id: @permission_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @permission_type
    assert_response :success
  end

  test "should update permission_type" do
    put :update, id: @permission_type, permission_type: { for: @permission_type.for, key: @permission_type.key, type: @permission_type.type }
    assert_redirected_to permission_type_path(assigns(:permission_type))
  end

  test "should destroy permission_type" do
    assert_difference('PermissionType.count', -1) do
      delete :destroy, id: @permission_type
    end

    assert_redirected_to permission_types_path
  end
end
