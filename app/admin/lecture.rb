ActiveAdmin.register Lecture do

  menu priority: 8

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :section, :date, :course_id
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  form do |f|
    f.inputs do
      f.input :course
      f.input :date, :as => :datepicker
      f.input :title
      f.input :section
    end

    f.actions
  end

  index do
    selectable_column
    column "Course", :sortable => :course_id do |lecture|
      Course.find_by_id(lecture.course_id).display_name
    end
    column :date
    column :section
    column :title
    actions
  end
  
end
