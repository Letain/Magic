class OrderMailer < ApplicationMailer
  default from: 'Cai Wei <cai@mail.163.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    @greeting = "Hi"
    @order = order

    mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(order)
    @greeting = "Hi"

    @order = order

    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end
end
