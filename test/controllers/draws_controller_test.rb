require "test_helper"

class DrawsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @draw = draws(:one)
  end

  test "should get index" do
    get draws_url
    assert_response :success
  end

  test "should get new" do
    get new_draw_url
    assert_response :success
  end

  test "should create draw" do
    assert_difference("Draw.count") do
      post draws_url, params: { draw: { b1: @draw.b1, b2: @draw.b2, b3: @draw.b3, b4: @draw.b4, b5: @draw.b5, b6: @draw.b6, draw_date: @draw.draw_date, s1: @draw.s1, s2: @draw.s2, s3: @draw.s3, s4: @draw.s4, s5: @draw.s5, s6: @draw.s6 } }
    end

    assert_redirected_to draw_url(Draw.last)
  end

  test "should show draw" do
    get draw_url(@draw)
    assert_response :success
  end

  test "should get edit" do
    get edit_draw_url(@draw)
    assert_response :success
  end

  test "should update draw" do
    patch draw_url(@draw), params: { draw: { b1: @draw.b1, b2: @draw.b2, b3: @draw.b3, b4: @draw.b4, b5: @draw.b5, b6: @draw.b6, draw_date: @draw.draw_date, s1: @draw.s1, s2: @draw.s2, s3: @draw.s3, s4: @draw.s4, s5: @draw.s5, s6: @draw.s6 } }
    assert_redirected_to draw_url(@draw)
  end

  test "should destroy draw" do
    assert_difference("Draw.count", -1) do
      delete draw_url(@draw)
    end

    assert_redirected_to draws_url
  end
end
