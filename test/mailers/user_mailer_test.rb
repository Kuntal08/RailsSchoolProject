require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "payment_invoice" do
    mail = UserMailer.payment_invoice
    assert_equal "Payment invoice", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
