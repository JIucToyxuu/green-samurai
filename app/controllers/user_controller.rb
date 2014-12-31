class UserController < ApplicationController

	def update
		@user = User.find_by_email(current_user.email)
		@user.update_attributes(params.require(:user).permit(:email, :name, :primary_language))
		redirect_to profile_path
	end

end
