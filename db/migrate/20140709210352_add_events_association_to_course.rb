class AddEventsAssociationToCourse < ActiveRecord::Migration
  def self.up
    add_column :events, :course_id, :integer
  end

  def self.down
    remove_column :events, :course_id
  end
end
