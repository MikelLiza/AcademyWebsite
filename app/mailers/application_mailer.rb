class ApplicationMailer < ActionMailer::Base
  default to: 'mike@email.com', from: 'mike@email.com'
  layout 'mailer'
end
