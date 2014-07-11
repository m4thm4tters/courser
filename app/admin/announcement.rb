ActiveAdmin.register Announcement do

  menu priority: 5
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :content, :date, :course_id
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
      f.input :content
    end

    f.actions
  end

  index do
    selectable_column
    column "Course", :sortable => :course_id do |announcement|
      Course.find_by_id(announcement.course_id).display_name
    end
    column :date
    column :title
    actions
  end
  
end
