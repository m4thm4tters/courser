class AddDateToAnnouncements < ActiveRecord::Migration
  def change
  	add_column :announcements, :date, :date
  end
end
