require 'test_helper'

class TickTracksControllerTest < ActionController::TestCase
  setup do
    @tick_track = tick_tracks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tick_tracks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tick_track" do
    assert_difference('TickTrack.count') do
      post :create, tick_track: { isPC: @tick_track.isPC, name: @tick_track.name, tick: @tick_track.tick, wound: @tick_track.wound }
    end

    assert_redirected_to tick_track_path(assigns(:tick_track))
  end

  test "should show tick_track" do
    get :show, id: @tick_track
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tick_track
    assert_response :success
  end

  test "should update tick_track" do
    put :update, id: @tick_track, tick_track: { isPC: @tick_track.isPC, name: @tick_track.name, tick: @tick_track.tick, wound: @tick_track.wound }
    assert_redirected_to tick_track_path(assigns(:tick_track))
  end

  test "should destroy tick_track" do
    assert_difference('TickTrack.count', -1) do
      delete :destroy, id: @tick_track
    end

    assert_redirected_to tick_tracks_path
  end
end
