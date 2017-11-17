require 'test_helper'

class ViewthreadsControllerTest < ActionController::TestCase
  setup do
    @viewthread = viewthreads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:viewthreads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create viewthread" do
    assert_difference('Viewthread.count') do
      post :create, viewthread: { CreatedBy: @viewthread.CreatedBy, Subject: @viewthread.Subject, Text: @viewthread.Text }
    end

    assert_redirected_to viewthread_path(assigns(:viewthread))
  end

  test "should show viewthread" do
    get :show, id: @viewthread
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @viewthread
    assert_response :success
  end

  test "should update viewthread" do
    patch :update, id: @viewthread, viewthread: { CreatedBy: @viewthread.CreatedBy, Subject: @viewthread.Subject, Text: @viewthread.Text }
    assert_redirected_to viewthread_path(assigns(:viewthread))
  end

  test "should destroy viewthread" do
    assert_difference('Viewthread.count', -1) do
      delete :destroy, id: @viewthread
    end

    assert_redirected_to viewthreads_path
  end
end
