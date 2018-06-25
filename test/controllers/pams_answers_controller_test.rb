require 'test_helper'

class PamsAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pams_answer = pams_answers(:one)
  end

  test "should get index" do
    get pams_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_pams_answer_url
    assert_response :success
  end

  test "should create pams_answer" do
    assert_difference('PamsAnswer.count') do
      post pams_answers_url, params: { pams_answer: { q_01: @pams_answer.q_01, q_02: @pams_answer.q_02, q_03: @pams_answer.q_03, q_04: @pams_answer.q_04, q_05: @pams_answer.q_05 } }
    end

    assert_redirected_to pams_answer_url(PamsAnswer.last)
  end

  test "should show pams_answer" do
    get pams_answer_url(@pams_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_pams_answer_url(@pams_answer)
    assert_response :success
  end

  test "should update pams_answer" do
    patch pams_answer_url(@pams_answer), params: { pams_answer: { q_01: @pams_answer.q_01, q_02: @pams_answer.q_02, q_03: @pams_answer.q_03, q_04: @pams_answer.q_04, q_05: @pams_answer.q_05 } }
    assert_redirected_to pams_answer_url(@pams_answer)
  end

  test "should destroy pams_answer" do
    assert_difference('PamsAnswer.count', -1) do
      delete pams_answer_url(@pams_answer)
    end

    assert_redirected_to pams_answers_url
  end
end
