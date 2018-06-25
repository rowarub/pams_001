require "application_system_test_case"

class PamsAnswersTest < ApplicationSystemTestCase
  setup do
    @pams_answer = pams_answers(:one)
  end

  test "visiting the index" do
    visit pams_answers_url
    assert_selector "h1", text: "Pams Answers"
  end

  test "creating a Pams answer" do
    visit pams_answers_url
    click_on "New Pams Answer"

    fill_in "Q 01", with: @pams_answer.q_01
    fill_in "Q 02", with: @pams_answer.q_02
    fill_in "Q 03", with: @pams_answer.q_03
    fill_in "Q 04", with: @pams_answer.q_04
    fill_in "Q 05", with: @pams_answer.q_05
    click_on "Create Pams answer"

    assert_text "Pams answer was successfully created"
    click_on "Back"
  end

  test "updating a Pams answer" do
    visit pams_answers_url
    click_on "Edit", match: :first

    fill_in "Q 01", with: @pams_answer.q_01
    fill_in "Q 02", with: @pams_answer.q_02
    fill_in "Q 03", with: @pams_answer.q_03
    fill_in "Q 04", with: @pams_answer.q_04
    fill_in "Q 05", with: @pams_answer.q_05
    click_on "Update Pams answer"

    assert_text "Pams answer was successfully updated"
    click_on "Back"
  end

  test "destroying a Pams answer" do
    visit pams_answers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pams answer was successfully destroyed"
  end
end
