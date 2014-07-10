class Instructor < ActiveRecord::Base
	has_many :courses

	def display_name
    	@display_name = self.first + " " + self.last
  	end
end
