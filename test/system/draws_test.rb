require "application_system_test_case"

class DrawsTest < ApplicationSystemTestCase
  setup do
    @draw = draws(:one)
  end

  test "visiting the index" do
    visit draws_url
    assert_selector "h1", text: "Draws"
  end

  test "should create draw" do
    visit draws_url
    click_on "New draw"

    fill_in "B1", with: @draw.b1
    fill_in "B2", with: @draw.b2
    fill_in "B3", with: @draw.b3
    fill_in "B4", with: @draw.b4
    fill_in "B5", with: @draw.b5
    fill_in "B6", with: @draw.b6
    fill_in "Draw date", with: @draw.draw_date
    fill_in "S1", with: @draw.s1
    fill_in "S2", with: @draw.s2
    fill_in "S3", with: @draw.s3
    fill_in "S4", with: @draw.s4
    fill_in "S5", with: @draw.s5
    fill_in "S6", with: @draw.s6
    click_on "Create Draw"

    assert_text "Draw was successfully created"
    click_on "Back"
  end

  test "should update Draw" do
    visit draw_url(@draw)
    click_on "Edit this draw", match: :first

    fill_in "B1", with: @draw.b1
    fill_in "B2", with: @draw.b2
    fill_in "B3", with: @draw.b3
    fill_in "B4", with: @draw.b4
    fill_in "B5", with: @draw.b5
    fill_in "B6", with: @draw.b6
    fill_in "Draw date", with: @draw.draw_date
    fill_in "S1", with: @draw.s1
    fill_in "S2", with: @draw.s2
    fill_in "S3", with: @draw.s3
    fill_in "S4", with: @draw.s4
    fill_in "S5", with: @draw.s5
    fill_in "S6", with: @draw.s6
    click_on "Update Draw"

    assert_text "Draw was successfully updated"
    click_on "Back"
  end

  test "should destroy Draw" do
    visit draw_url(@draw)
    click_on "Destroy this draw", match: :first

    assert_text "Draw was successfully destroyed"
  end
end
