class PagesController < ApplicationController
	before_filter :authenticate_user!, :except => [:index, :contacts, :about, :sign_up, :license, :confidentiality]

	def index
		# if user_signed_in?
		# 	redirect_to(new_user_session_path)
		# end
	end
end
