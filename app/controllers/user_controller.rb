class UserController < ApplicationController

	def update
		@user = User.find_by_email(current_user.email)
		@user.update_attributes(params.require(:user).permit(:email, :name, :primary_language))
		redirect_to profile_path
	end

	def confirm_message
		UpdatePassword.confirm_change_password(current_user.email).deliver
	end

end
