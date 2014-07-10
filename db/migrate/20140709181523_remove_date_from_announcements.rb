class RemoveDateFromAnnouncements < ActiveRecord::Migration
  def change
  	remove_column :announcements, :date, :string
  end
end
