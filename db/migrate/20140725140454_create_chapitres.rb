class CreateChapitres < ActiveRecord::Migration
  def change
    create_table :chapitres do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
