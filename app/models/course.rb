class Course < ActiveRecord::Base
	belongs_to :instructor
	has_many :announcements, dependent: :destroy
	has_many :assignments, dependent: :destroy
end
