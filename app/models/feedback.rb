class Feedback < ActiveRecord::Base
	validates :name, presence: true
	validates :message, presence: true
	validates :email, presence: true, format: { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
