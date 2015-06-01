class SendEmailJob < ActiveJob::Base
  include SuckerPunch::Job
  queue_as :default

  def perform(user)
    AdminMailer.new_user_registered(user).deliver_later
  end
end
