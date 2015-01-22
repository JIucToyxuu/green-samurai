class Course < ActiveRecord::Base
	has_many :teachers, foreign_key: "courses_id", dependent: :destroy
	has_many :authors, :through => :teachers, source: :authors, class_name: "Author"
	has_many :pupils, foreign_key: "courses_id", dependent: :destroy
	has_many :users, :through => :pupils, source: :users, class_name: "User"
	belongs_to :university
end