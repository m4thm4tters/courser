ActiveAdmin.register Assignment do

  menu priority: 6  
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :content, :start, :due, :course_id
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
      f.input :start, :as => :datepicker
      f.input :due, :as => :datepicker
      f.input :title
      f.input :content
    end

    f.actions
  end

  index do
    selectable_column
    column "Course", :sortable => :course_id do |assignment|
      Course.find_by_id(assignment.course_id).display_name
    end
    column :title
    column :start
    column :due
    actions
  end

end
