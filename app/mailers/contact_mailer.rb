class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.welcome.subject
  #
  default from: 'no-reply@NFTCollab.fr'
    def welcome(user)
      @user = user
      @url = 'http://NFTCollab.fr/login'
      mail(to: @user.email, subject:'Bienvenue chez les Artistes du NFT')
    end

end
