class QuestionMailer < ActionMailer::Base
	def send_question(text)
		@text = text
		mail(subject: 'Question', to: 'duzhnovwork@gmail.com', from: 'duzhnovwork@gmail.com')
	end
end
