class TwitterConfirmationController < ApplicationController
  def confirm_twitter_email
  end

  def send_confirm
  	@email = params[:email]
  	TwitterMailer.confirm_email(@email).deliver
  end

  def create_identity
  	user = User.where(:email => params[:email]).first if params[:email]
  	if !user.nil?
  		@identity = Identity.find_for_oauth(session['twitter_data'])
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
