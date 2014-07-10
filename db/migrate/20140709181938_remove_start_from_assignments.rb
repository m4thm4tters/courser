class RemoveStartFromAssignments < ActiveRecord::Migration
  def change
  	remove_column :assignments, :start, :string
  end
end
