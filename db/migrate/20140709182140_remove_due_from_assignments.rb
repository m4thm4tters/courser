class RemoveDueFromAssignments < ActiveRecord::Migration
  def change
  	remove_column :assignments, :due, :string
  end
end
