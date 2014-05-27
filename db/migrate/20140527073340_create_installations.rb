class CreateInstallations < ActiveRecord::Migration
  def change
    create_table :installations do |t|
      t.string :name
      t.text :description
      t.string :video
      t.text :support
      t.text :aide

      t.timestamps
    end
  end
end
