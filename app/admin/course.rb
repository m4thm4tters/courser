ActiveAdmin.register Course do

  menu priority: 4
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :section, :semester, :year, :instructor_id
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
  index do
    selectable_column
    column "Instructor", :sortable => :instructor_id do |course|
      Instructor.find_by_id(course.instructor_id).display_name
    end
    column :title
    column :section
    column :semester
    column :year
    actions
  end

end
