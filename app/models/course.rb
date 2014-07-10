class Course < ActiveRecord::Base
	belongs_to :instructor
	has_many :announcements, dependent: :destroy
	has_many :assignments, dependent: :destroy
	has_many :events, dependent: :destroy
	has_many :lectures, dependent: :destroy

	def display_name
		@display_name = self.title + " (section " + self.section + ")"
	end
end
