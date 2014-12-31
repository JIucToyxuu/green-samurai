class UpdatePassword < ActionMailer::Base
	def confirm_change_password(email)
		@email = email
		mail(subject: 'Confirm change password', to: @email, from: "duzhnovwork@gmail.com")
	end
end
