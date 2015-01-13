class User < ActiveRecord::Base
	has_many :identities, dependent: :destroy
	has_many :pupils, foreign_key: "users_id", dependent: :destroy
	has_many :courses, through: :pupils, source: :courses, class_name: "Course"
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
				 :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :confirmable

	validates :email, presence: true
	validates :name, presence: true

	def self.find_for_oauth(auth)


		user = User.find_by_email(auth.info.email) if auth.info.email

		if !user.nil?
			identity = Identity.find_for_oauth(auth)
			identity.user = user
			identity.save!
		end
		user
	end

	def email_verified?
		self.email
	end

end