class TwitterMailer < ActionMailer::Base

	def confirm_email(email)
		@email = email
		mail(subject: 'Confirm Twitter email', to: @email, from: "duzhnovwork@gmail.com")
	end
end
