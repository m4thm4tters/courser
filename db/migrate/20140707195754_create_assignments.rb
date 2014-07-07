class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.string :content
      t.string :start
      t.string :due

      t.timestamps
    end
  end
end
