require 'test_helper'

class FantasyteamsControllerTest < ActionController::TestCase
  setup do
    @fantasyteam = fantasyteams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fantasyteams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fantasyteam" do
    assert_difference('Fantasyteam.count') do
      post :create, fantasyteam: { feepaid: @fantasyteam.feepaid, owner: @fantasyteam.owner, teamname: @fantasyteam.teamname }
    end

    assert_redirected_to fantasyteam_path(assigns(:fantasyteam))
  end

  test "should show fantasyteam" do
    get :show, id: @fantasyteam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fantasyteam
    assert_response :success
  end

  test "should update fantasyteam" do
    put :update, id: @fantasyteam, fantasyteam: { feepaid: @fantasyteam.feepaid, owner: @fantasyteam.owner, teamname: @fantasyteam.teamname }
    assert_redirected_to fantasyteam_path(assigns(:fantasyteam))
  end

  test "should destroy fantasyteam" do
    assert_difference('Fantasyteam.count', -1) do
      delete :destroy, id: @fantasyteam
    end

    assert_redirected_to fantasyteams_path
  end
end
