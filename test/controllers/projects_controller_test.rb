require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { artisan_id: @project.artisan_id, customer_id: @project.customer_id, description: @project.description, design_versions_count: @project.design_versions_count, label: @project.label, parent_project_id: @project.parent_project_id, product_category_id: @project.product_category_id, show_in_catalog: @project.show_in_catalog }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { artisan_id: @project.artisan_id, customer_id: @project.customer_id, description: @project.description, design_versions_count: @project.design_versions_count, label: @project.label, parent_project_id: @project.parent_project_id, product_category_id: @project.product_category_id, show_in_catalog: @project.show_in_catalog }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
