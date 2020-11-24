require 'test_helper'

class QuizResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get quiz_results_new_url
    assert_response :success
  end

  test "should get show" do
    get quiz_results_show_url
    assert_response :success
  end

end
