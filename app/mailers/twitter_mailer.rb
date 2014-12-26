class TwitterMailer < ActionMailer::Base
  default from: "https://polar-citadel-4170.herokuapp.com/"

  def confirm_email(email)
  	@email = email
  	mail(to: @email, subject: 'Confirm Twitter email')
  end
end
