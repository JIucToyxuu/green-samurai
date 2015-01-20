class FeedbacksController < ApplicationController
	def create

		if feedback_params[:title].nil? || feedback_params[:title].empty?
			params[:feedback][:title] = feedback_params[:message][0..(feedback_params[:message] =~ /\r/) || feedback_params[:message].length]
		end
		puts 'params'
		puts params



		@feedback = Feedback.create(feedback_params)
		if @feedback.persisted?
			redirect_to :back
		else
			flash[:errors] = @feedback.errors.full_messages
			if (URI(request.referer).path != '/profile')
				flash[:name] = feedback_params[:name]
				flash[:email] = feedback_params[:email]
			end
			redirect_to :back
		end
	end

	private

	def feedback_params
		params.require(:feedback).permit(:name, :email, :message, :target, :title)
	end
end