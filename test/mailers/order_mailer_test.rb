require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "Pragmatic Store Order Confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["Cai Wei <cai@mail.163.com>"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "ragmatic Store Order Shipped", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["ai Wei <cai@mail.163.com>"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
