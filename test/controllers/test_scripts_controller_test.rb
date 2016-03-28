require 'test_helper'

class TestScriptsControllerTest < ActionController::TestCase
  setup do
    @test_script = test_scripts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_scripts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_script" do
    assert_difference('TestScript.count') do
      post :create, test_script: { name: @test_script.name, syllabus_item_id: @test_script.syllabus_item_id }
    end

    assert_redirected_to test_script_path(assigns(:test_script))
  end

  test "should show test_script" do
    get :show, id: @test_script
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_script
    assert_response :success
  end

  test "should update test_script" do
    patch :update, id: @test_script, test_script: { name: @test_script.name, syllabus_item_id: @test_script.syllabus_item_id }
    assert_redirected_to test_script_path(assigns(:test_script))
  end

  test "should destroy test_script" do
    assert_difference('TestScript.count', -1) do
      delete :destroy, id: @test_script
    end

    assert_redirected_to test_scripts_path
  end
end
