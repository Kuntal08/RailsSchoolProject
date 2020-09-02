class UserMailer < ApplicationMailer
  default from: "kuntal.majee1998@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.payment_invoice.subject
  #
  def payment_invoice(user, admin)
    @user = user
    @admin = admin

    mail to: [user.email, admin.email], subject: "Payment Invoice"
  end
end
