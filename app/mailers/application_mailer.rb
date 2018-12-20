class ApplicationMailer < ActionMailer::Base
  default from: ENV['MAILJET_EMAIL']
  layout 'mailer'
end
