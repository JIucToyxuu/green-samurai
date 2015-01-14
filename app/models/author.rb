class Author < ActiveRecord::Base
	has_many :teachers, foreign_key: "authors_id", dependent: :destroy
	has_many :courses, through: :teachers, source: :courses, class_name: "Course"
end
