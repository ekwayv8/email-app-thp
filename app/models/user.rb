class User < ApplicationRecord
	#Permet d'envoyer un email à l'utilisateur juste après la création de son compte
	after_create :welcome_send

  def welcome_send
    UserMaillerMailer.welcome_email(self).deliver_now
  end

end
