class AgendaMailer < ApplicationMailer
  default from: 'from@example.com'
  layout 'mailer'
  def agenda_delete_mail(agenda_member, agenda_name)
    @agenda_name = agenda_name
    mail to: agenda_member, subject: I18n.t('views.messages.delete_agenda')
  end
end
