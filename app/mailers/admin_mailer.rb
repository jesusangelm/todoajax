class AdminMailer < ApplicationMailer
  default to: "jam@jam.net.ve"

  def new_user_registered(user)
    @user = user
    mail(subject: "Nuevo usuario registrado: #{@user.email}")
  end
end
