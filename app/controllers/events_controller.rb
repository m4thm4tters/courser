class EventsController < ApplicationController
	def index
		@course = Course.find(params[:id])
		@events = @course.events
		@assignments = @course.assignments
		@lectures = @course.lectures
	end
end
