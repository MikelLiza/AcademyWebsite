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

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_template layout: 'application'
    assert_select 'title', 'Lizard English Academy'
    assert_select 'h1', 'Contact Us'
    assert_select 'p', 'Complete the following form to get in touch with us.'
  end

  test "should post request contact but no email" do
    post request_contact_url
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post request_contact_url, params: {name: "Tester", email: "test@me.com", telephone: "1234567890", message: "Yo"}
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end
end
