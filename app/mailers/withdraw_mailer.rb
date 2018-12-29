class WithdrawMailer < ApplicationMailer
  default :from => "support@expertoptioner.com"
  def withdraw_email(user, deposit)
    @user = user
    @withdraw = withdraw

    mail(to: "support@expertoptioner.com", subject: "withdrawal request")
  end 
end
