class AddAnnouncementsAssociationToCourse < ActiveRecord::Migration
  def self.up
    add_column :announcements, :course_id, :integer
  end

  def self.down
    remove_column :announcements, :course_id
  end
end
