require 'test_helper'

class CompetitionsControllerTest < ActionController::TestCase
  fixtures :competitions

  def competition
    @competition ||= competitions(:wwc_2015)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:competitions)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create competition' do
    assert_difference('Competition.count') do
      post :create, competition: { country: 'JP', name: 'Compet’s name', year: '2013' }
    end

    assert_redirected_to competitions_path
  end

  test 'should show competition' do
    get :show, id: competition
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: competition
    assert_response :success
  end

  test 'should update competition' do
    assert_no_difference('Competition.count') do
      patch :update, id: competition, competition: { country: competition.country, name: competition.name, year: competition.year }
    end

    assert_redirected_to competitions_path
  end

  test 'should destroy competition' do
    assert_difference('Competition.count', -1) do
      delete :destroy, id: competition
    end

    assert_redirected_to competitions_path
  end
end
