class CoursesController < ApplicationController
  def index
  	@courses = Course.all
  end

  def show
  	@announcements = Announcement.all
	@course = Course.find(params[:id])
  end
end
