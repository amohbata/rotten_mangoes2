class UserMailer < ActionMailer::Base
  default from: "admin@rottenmangoes.com"

  def delete_email(user)
  	@user = user
  	@url = 'http://imgur.com'
  	mail(to: user.email, subject: 'Your Rotten Mangoes account has been deleted')
  end

end
