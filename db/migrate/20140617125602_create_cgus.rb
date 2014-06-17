class CreateCgus < ActiveRecord::Migration
  def change
    create_table :cgus do |t|
      t.string :article
      t.text :body

      t.timestamps
    end
  end
end
