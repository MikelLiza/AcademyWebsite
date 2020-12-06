require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should return contact email" do
    mail = ContactMailer.contact_email("test@me.com", "Tester", "1234567890", @message = "Yo")
    assert_equal ['mike@email.com'], mail.to
    assert_equal ['mike@email.com'], mail.from
  end
end
