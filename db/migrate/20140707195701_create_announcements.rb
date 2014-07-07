class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :title
      t.string :content
      t.string :date

      t.timestamps
    end
  end
end
