require 'test_helper'

class CompanyQuizzesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get company_quizzes_index_url
    assert_response :success
  end

  test "should get new" do
    get company_quizzes_new_url
    assert_response :success
  end

  test "should get create" do
    get company_quizzes_create_url
    assert_response :success
  end

end
