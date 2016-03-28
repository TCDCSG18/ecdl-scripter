require 'test_helper'

class SyllabusItemsControllerTest < ActionController::TestCase
  setup do
    @syllabus_item = syllabus_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:syllabus_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create syllabus_item" do
    assert_difference('SyllabusItem.count') do
      post :create, syllabus_item: { name: @syllabus_item.name }
    end

    assert_redirected_to syllabus_item_path(assigns(:syllabus_item))
  end

  test "should show syllabus_item" do
    get :show, id: @syllabus_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @syllabus_item
    assert_response :success
  end

  test "should update syllabus_item" do
    patch :update, id: @syllabus_item, syllabus_item: { name: @syllabus_item.name }
    assert_redirected_to syllabus_item_path(assigns(:syllabus_item))
  end

  test "should destroy syllabus_item" do
    assert_difference('SyllabusItem.count', -1) do
      delete :destroy, id: @syllabus_item
    end

    assert_redirected_to syllabus_items_path
  end
end
