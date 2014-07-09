class CoursesController < ApplicationController
  def index
  	@courses = Course.all
  end

  def show
  	@announcements = Announcement.all
	@course = Course.find(params[:id])
	@instructor = Instructor.find_by_id(@course.instructor_id)
  end
end
