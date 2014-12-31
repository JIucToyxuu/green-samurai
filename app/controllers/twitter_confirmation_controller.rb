class TwitterConfirmationController < ApplicationController
	def confirm_twitter_email
		if !current_user.nil?
			redirect_to profile_path
		end
	end

	def send_confirm
		@email = params[:email]
		user = User.find_by_email(@email)
		if user.nil?
			redirect_to new_user_registration_url
		else
			TwitterMailer.confirm_email(@email).deliver
		end
	end

	def create_identity
		user = User.find_by_email(params[:email]) if params[:email]
		if !user.nil?
			@identity = Identity.find_for_oauth(JSON.parse(cookies[:twitter_data]))
			@identity.user = user
			@identity.save!
			sign_in_and_redirect @identity.user, event: :authentication
		else
			puts user
			puts params[:email]
			redirect_to new_user_registration_url
		end
	end
end
