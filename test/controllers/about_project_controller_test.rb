require 'test_helper'

class AboutProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get author" do
    get about_project_author_url
    assert_response :success
  end

end
