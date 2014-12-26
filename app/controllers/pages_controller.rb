class PagesController < ApplicationController
	before_filter :authenticate_user!, :except => [:index, :contacts, :about, :sign_up, :license, :confidentiality, :confirm_twitter_email, :send_confirm]

	def index
		# if user_signed_in?
		# 	redirect_to(new_user_session_path)
		# end
	end

end
