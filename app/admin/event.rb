ActiveAdmin.register Event do

  menu priority: 7
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :date, :course_id
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
    end

    f.actions
  end

  index do
    selectable_column
    column "Course", :sortable => :course_id do |event|
      Course.find_by_id(event.course_id).display_name
    end
    column :date
    column :title
    actions
  end
  
end
