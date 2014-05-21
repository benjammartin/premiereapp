class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.references :course

      t.timestamps
    end
    add_index :topics, :course_id
  end
end
