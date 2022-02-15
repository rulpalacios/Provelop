class EventMailer < MandrillMailer::TemplateMailer
  default from: 'raul@provelop.mx'

  def purchase_event(to_email, event)
    mandrill_mail(
      template: 'event-purchase',
      subject: 'Adquiriste un evento en Provelop',
      to: to_email,
      vars: {
        EVENT_NAME: event.name,
        EVENT_DESCRIPTION: event.description,
        EVENT_DATES: dates(event.sessions)
      },
      important: true,
      inline_css: true
     )
  end

  private

  def dates(sessions)
    dates = ''
    sessions.map do |session|
      dates << session.date
    end

    dates
  end
end
