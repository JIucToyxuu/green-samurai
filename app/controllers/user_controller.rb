class UserController < ApplicationController

	def profile
		@courses = []
		current_user.pupils.each do |pupil|
			@courses << Course.find_by_id(pupil.courses_id);
		end
		puts @courses
	end

	def subscribe
		Pupil.create(users_id: current_user.id, courses_id: params[:course_id])
		redirect_to root_path
	end

	def unsubscribe
		Pupil.find_by(users_id: current_user.id, courses_id: params[:course_id]).destroy
		redirect_to profile_path
	end

	def update
		@user = User.find_by_email(current_user.email)
		@user.update_attributes(params.require(:user).permit(:email, :name, :primary_language))
		redirect_to profile_path
	end

	def confirm_message
		@user = User.find_by_id(current_user.id)
		UpdatePassword.confirm_change_password(@user.email).deliver
	end

end
