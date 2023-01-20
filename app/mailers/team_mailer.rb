class TeamMailer < ApplicationMailer
  default from: 'from@example.com'
  layout 'mailer'
  def owner_change_mail(user)
    @email = user.email
    mail to: @email, subject: I18n.t('views.messages.owner_change')
  end
end
