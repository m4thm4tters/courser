class AddDueToAssignments < ActiveRecord::Migration
  def change
  	add_column :assignments, :due, :date
  end
end
