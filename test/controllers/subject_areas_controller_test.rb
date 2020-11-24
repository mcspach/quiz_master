require 'test_helper'

class SubjectAreasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subject_areas_index_url
    assert_response :success
  end

end
