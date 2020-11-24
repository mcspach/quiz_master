require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get leaderboard" do
    get companies_leaderboard_url
    assert_response :success
  end

  test "should get company_quizzes" do
    get companies_company_quizzes_url
    assert_response :success
  end

end
