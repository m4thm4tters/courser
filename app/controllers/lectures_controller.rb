class LecturesController < ApplicationController
	def index
		@course = Course.find(params[:id])
		@lectures = @course.lectures
	end
end
