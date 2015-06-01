class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tasks, dependent: :destroy

  after_create :send_email_notification

  def send_email_notification
    SendEmailJob.new.async.perform(self)
  end
end
