class FeedbacksController < ApplicationController
	def create

		@feedback = Feedback.new(feedback_params)
		if @feedback.save
			redirect_to contacts_path
		else
			render 'new'
		end
	end

	private

	def feedback_params
      params.require(:feedback).permit(:name, :email, :message, :target)
    end
end