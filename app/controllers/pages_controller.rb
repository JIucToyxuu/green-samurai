class PagesController < ApplicationController
	before_filter :authenticate_user!, :except => [:index, :contacts, :about, :sign_up, :license, :confidentiality, :confirm_twitter_email, :send_confirm, :courses, :news, :questions, :send_question]

	def index
		if params[:sort_by].nil?
			params[:sort_by] = 'date_begin'
		end
		if params[:q].nil?
			if current_user.nil?
				@courses = Course.all.order(params[:sort_by])
			else
				@courses = Course.all.joins(:pupils).where.not('pupils.users_id' => current_user.id).order(params[:sort_by])
				@all = Course.all.order(params[:sort_by])
				@all.each do |course|
					if !course.pupils[0]
						@courses << course
					end
				end
			end
		else
			@courses = Course.where("name LIKE '%#{params[:q]}%'")
		end
		current_user_courses

		#news for slide
		@news = News.last(2)
		#category for sorting data
		@category = [["По дате начала курса", 'date_begin'], ["По теме", 'name'], ["По университету", 'university_id'], ["В свободном доступе", 'free']]
	end

	def courses
		if params[:sort_by].nil?
			params[:sort_by] = 'date_begin'
		end
		@universities = University.includes(:courses)
		if !params[:q].nil?
			@universities = University.joins(:courses).includes(:courses).where("courses.name LIKE '%#{params[:q]}%'")
		end
		@universities = @universities.all.joins(:courses).order('universities.id').includes(:courses).order("courses.#{params[:sort_by]}")
		#category for sorting data
		@category = [["По дате начала курса", 'date_begin'], ["По теме", 'name'], ["В свободном доступе", 'free']]
		current_user_courses
	end

	def about_course
		@course = Course.find_by_id(params[:course_id])
		@authors = Author.all.joins(:teachers).where('teachers.courses_id' => @course.id)
		current_user_courses
	end

	def news
		if params[:news].nil?
			@news = News.all.paginate(:page => params[:page])
		else
			@news = News.find_by_id(params[:news])
		end
	end

	def universities
		@courses = [];

		@universities = University.all
		if params[:university].nil?
			@university = University.first
		else
			@university = University.find_by_abbreviation(params[:university])
		end

		@courses = @university.courses;
		current_user_courses
	end

	def university
		if params[:sort_by].nil?
			params[:sort_by] = 'date_begin'
		end
		#category for sorting data
		@category = [["По дате начала курса", 'date_begin'], ["По теме", 'name'], ["В свободном доступе", 'free']]

		@university = University.find_by_abbreviation(params[:university])
		@courses =  @university.courses.order(params[:sort_by]);
		current_user_courses
	end

	def send_question
		QuestionMailer.send_question(params[:question][:text]).deliver
		redirect_to questions_path
	end

private

	def current_user_courses
		if !current_user.nil?
			@user_courses = Course.all.joins(:pupils).where('pupils.users_id' => current_user.id)
		end
	end
end