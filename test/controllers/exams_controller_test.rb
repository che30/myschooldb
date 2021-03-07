require "test_helper"

class ExamsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get exams_new_url
    assert_response :success
  end
end
