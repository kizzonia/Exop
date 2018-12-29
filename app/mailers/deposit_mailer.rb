class DepositMailer < ApplicationMailer
  default :from => "support@expertoptioner.com"
  def deposit_email(user, deposit)
    @user = user
    @deposit = deposit

    mail(to: "support@expertoptioner.com", subject: "deposital request")
  end
end
