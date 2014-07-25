class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.text :description
      t.string :video
      t.text :support
      t.text :aide
      t.references :topic
      t.references :course
      t.references :user

      t.timestamps
    end
    add_index :steps, :topic_id
    add_index :steps, :course_id
    add_index :steps, :user_id
  end
end
