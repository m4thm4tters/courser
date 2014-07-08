class AssignmentsController < ApplicationController
	def index
		@course = Course.find(params[:id])
		@assignments = @course.assignments
	end
end
