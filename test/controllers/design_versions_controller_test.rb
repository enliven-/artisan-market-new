require 'test_helper'

class DesignVersionsControllerTest < ActionController::TestCase
  setup do
    @design_version = design_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:design_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create design_version" do
    assert_difference('DesignVersion.count') do
      post :create, design_version: { comment_thread_count: @design_version.comment_thread_count, html: @design_version.html, project_id: @design_version.project_id }
    end

    assert_redirected_to design_version_path(assigns(:design_version))
  end

  test "should show design_version" do
    get :show, id: @design_version
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @design_version
    assert_response :success
  end

  test "should update design_version" do
    patch :update, id: @design_version, design_version: { comment_thread_count: @design_version.comment_thread_count, html: @design_version.html, project_id: @design_version.project_id }
    assert_redirected_to design_version_path(assigns(:design_version))
  end

  test "should destroy design_version" do
    assert_difference('DesignVersion.count', -1) do
      delete :destroy, id: @design_version
    end

    assert_redirected_to design_versions_path
  end
end
