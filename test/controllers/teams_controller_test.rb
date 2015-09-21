require 'test_helper'

class TeamsControllerTest < ActionController::TestCase
  fixtures :teams

  def team
    @team ||= teams(:fr)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:teams)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create team' do
    assert_difference('Team.count') do
      post :create, team: { country: 'AF', external_color: '#2bf' }
    end

    assert_redirected_to teams_path
  end

  test 'should show team' do
    get :show, id: team
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: team
    assert_response :success
  end

  test 'should update team' do
    patch :update, id: team, team: { local_color: team.local_color }
    assert_redirected_to teams_path
  end

  test 'should destroy team' do
    assert_difference('Team.count', -1) do
      delete :destroy, id: team
    end

    assert_redirected_to teams_path
  end
end
