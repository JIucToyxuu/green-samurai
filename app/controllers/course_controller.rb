class CourseController < ApplicationController


	def show
	end

	def new
		@course = Course.new
	end
end
