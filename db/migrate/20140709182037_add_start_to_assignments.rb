class AddStartToAssignments < ActiveRecord::Migration
  def change
  	add_column :assignments, :start, :date
  end
end
