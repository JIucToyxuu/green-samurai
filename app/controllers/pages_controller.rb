class PagesController < ApplicationController
	before_filter :authenticate_user!, :except => [:index, :contacts, :about, :sign_up, :license, :confidentiality, :confirm_twitter_email, :send_confirm]

	def index
		if current_user.nil?
			@courses = Course.all
		else
			@courses = Course.all.joins(:pupils).where.not('pupils.users_id' => current_user.id)
			@all = Course.all
			@all.each do |course|
				if !course.pupils[0]
					@courses << course
				end
			end
		end
	end

	def universities
		@courses = [];

		@universities = University.all
		if params[:university].nil?
			@university = University.first
			puts 'nnnnn'
		else
			@university = University.find_by_abbreviation(params[:university])
		end

		@courses = @university.courses;
	end

	def university
		@university = University.find_by_abbreviation(params[:university])
		@courses =  @university.courses;
	end
end
