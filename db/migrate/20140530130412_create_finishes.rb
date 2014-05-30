class CreateFinishes < ActiveRecord::Migration
  def change
    create_table :finishes do |t|
      t.string :index
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
