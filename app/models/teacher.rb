class Teacher < ActiveRecord::Base
	belongs_to :authors
	belongs_to :courses
end
