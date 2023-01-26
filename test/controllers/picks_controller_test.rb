require "test_helper"

class PicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pick = picks(:one)
  end

  test "should get index" do
    get picks_url
    assert_response :success
  end

  test "should get new" do
    get new_pick_url
    assert_response :success
  end

  test "should create pick" do
    assert_difference("Pick.count") do
      post picks_url, params: { pick: { b1: @pick.b1, b2: @pick.b2, b3: @pick.b3, b4: @pick.b4, b5: @pick.b5, draw_date: @pick.draw_date, m1: @pick.m1, m2: @pick.m2, m3: @pick.m3, m4: @pick.m4, m5: @pick.m5, powerball: @pick.powerball, powermatch: @pick.powermatch, powerscore: @pick.powerscore, s1: @pick.s1, s2: @pick.s2, s3: @pick.s3, s4: @pick.s4, s5: @pick.s5, won: @pick.won } }
    end

    assert_redirected_to pick_url(Pick.last)
  end

  test "should show pick" do
    get pick_url(@pick)
    assert_response :success
  end

  test "should get edit" do
    get edit_pick_url(@pick)
    assert_response :success
  end

  test "should update pick" do
    patch pick_url(@pick), params: { pick: { b1: @pick.b1, b2: @pick.b2, b3: @pick.b3, b4: @pick.b4, b5: @pick.b5, draw_date: @pick.draw_date, m1: @pick.m1, m2: @pick.m2, m3: @pick.m3, m4: @pick.m4, m5: @pick.m5, powerball: @pick.powerball, powermatch: @pick.powermatch, powerscore: @pick.powerscore, s1: @pick.s1, s2: @pick.s2, s3: @pick.s3, s4: @pick.s4, s5: @pick.s5, won: @pick.won } }
    assert_redirected_to pick_url(@pick)
  end

  test "should destroy pick" do
    assert_difference("Pick.count", -1) do
      delete pick_url(@pick)
    end

    assert_redirected_to picks_url
  end
end
