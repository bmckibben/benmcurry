require "application_system_test_case"

class PicksTest < ApplicationSystemTestCase
  setup do
    @pick = picks(:one)
  end

  test "visiting the index" do
    visit picks_url
    assert_selector "h1", text: "Picks"
  end

  test "should create pick" do
    visit picks_url
    click_on "New pick"

    fill_in "B1", with: @pick.b1
    fill_in "B2", with: @pick.b2
    fill_in "B3", with: @pick.b3
    fill_in "B4", with: @pick.b4
    fill_in "B5", with: @pick.b5
    fill_in "Draw date", with: @pick.draw_date
    check "M1" if @pick.m1
    check "M2" if @pick.m2
    check "M3" if @pick.m3
    check "M4" if @pick.m4
    check "M5" if @pick.m5
    fill_in "Powerball", with: @pick.powerball
    check "Powermatch" if @pick.powermatch
    fill_in "Powerscore", with: @pick.powerscore
    fill_in "S1", with: @pick.s1
    fill_in "S2", with: @pick.s2
    fill_in "S3", with: @pick.s3
    fill_in "S4", with: @pick.s4
    fill_in "S5", with: @pick.s5
    fill_in "Won", with: @pick.won
    click_on "Create Pick"

    assert_text "Pick was successfully created"
    click_on "Back"
  end

  test "should update Pick" do
    visit pick_url(@pick)
    click_on "Edit this pick", match: :first

    fill_in "B1", with: @pick.b1
    fill_in "B2", with: @pick.b2
    fill_in "B3", with: @pick.b3
    fill_in "B4", with: @pick.b4
    fill_in "B5", with: @pick.b5
    fill_in "Draw date", with: @pick.draw_date
    check "M1" if @pick.m1
    check "M2" if @pick.m2
    check "M3" if @pick.m3
    check "M4" if @pick.m4
    check "M5" if @pick.m5
    fill_in "Powerball", with: @pick.powerball
    check "Powermatch" if @pick.powermatch
    fill_in "Powerscore", with: @pick.powerscore
    fill_in "S1", with: @pick.s1
    fill_in "S2", with: @pick.s2
    fill_in "S3", with: @pick.s3
    fill_in "S4", with: @pick.s4
    fill_in "S5", with: @pick.s5
    fill_in "Won", with: @pick.won
    click_on "Update Pick"

    assert_text "Pick was successfully updated"
    click_on "Back"
  end

  test "should destroy Pick" do
    visit pick_url(@pick)
    click_on "Destroy this pick", match: :first

    assert_text "Pick was successfully destroyed"
  end
end
