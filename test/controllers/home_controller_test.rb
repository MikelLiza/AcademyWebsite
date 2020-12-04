require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_home_url
    assert_response :success

    assert_select 'title', 'Lizard English Academy'
    assert_select '.title', 'Lizard English Academy'
    assert_select '.welcome', 'Learn, Live & Discover the English language with Lizard English Academy'
    assert_select '.welcoming_message', 'With small class sizes, wonderful teachers and great support staff, come study at Lizard English Academy'
  end

end
