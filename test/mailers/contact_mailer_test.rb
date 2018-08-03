require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "name:string" do
    mail = ContactMailer.name:string
    assert_equal "Name:string", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "email:string" do
    mail = ContactMailer.email:string
    assert_equal "Email:string", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
