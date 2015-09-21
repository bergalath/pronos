require 'test_helper'

class MatchesControllerTest < ActionController::TestCase
  fixtures :matches, :teams
  attr_reader :local_team, :visitor_team, :match

  setup do
    @local_team   ||= teams(:fr)
    @visitor_team ||= teams(:ja)
    @match        ||= matches(:round_one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:matches)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create match' do
    assert_difference('Match.count') do
      post :create, match: { competition_id: match.competition, local_id: local_team, visitor_id: visitor_team, begin_at: 2.days.from_now }
    end

    assert_redirected_to match.competition
  end

  test 'should show match' do
    get :show, id: match
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: match
    assert_response :success
  end

  test 'should update match' do
    patch :update, id: match, match: { local_score: 2, visitor_score: 3 }
    assert_redirected_to match.competition
  end

  test 'should destroy match' do
    assert_difference('Match.count', -1) do
      delete :destroy, id: match
    end

    assert_redirected_to match.competition
  end
end
