require 'test_helper'

class ProteamsControllerTest < ActionController::TestCase
  setup do
    @proteam = proteams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proteams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proteam" do
    assert_difference('Proteam.count') do
      post :create, proteam: {  }
    end

    assert_redirected_to proteam_path(assigns(:proteam))
  end

  test "should show proteam" do
    get :show, id: @proteam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proteam
    assert_response :success
  end

  test "should update proteam" do
    put :update, id: @proteam, proteam: {  }
    assert_redirected_to proteam_path(assigns(:proteam))
  end

  test "should destroy proteam" do
    assert_difference('Proteam.count', -1) do
      delete :destroy, id: @proteam
    end

    assert_redirected_to proteams_path
  end
end
