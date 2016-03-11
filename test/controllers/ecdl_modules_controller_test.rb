require 'test_helper'

class EcdlModulesControllerTest < ActionController::TestCase
  setup do
    @ecdl_module = ecdl_modules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ecdl_modules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ecdl_module" do
    assert_difference('EcdlModule.count') do
      post :create, ecdl_module: { description: @ecdl_module.description, module_id: @ecdl_module.module_id, name: @ecdl_module.name }
    end

    assert_redirected_to ecdl_module_path(assigns(:ecdl_module))
  end

  test "should show ecdl_module" do
    get :show, id: @ecdl_module
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ecdl_module
    assert_response :success
  end

  test "should update ecdl_module" do
    patch :update, id: @ecdl_module, ecdl_module: { description: @ecdl_module.description, module_id: @ecdl_module.module_id, name: @ecdl_module.name }
    assert_redirected_to ecdl_module_path(assigns(:ecdl_module))
  end

  test "should destroy ecdl_module" do
    assert_difference('EcdlModule.count', -1) do
      delete :destroy, id: @ecdl_module
    end

    assert_redirected_to ecdl_modules_path
  end
end
