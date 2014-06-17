class CreateCgvs < ActiveRecord::Migration
  def change
    create_table :cgvs do |t|
      t.string :article
      t.text :body

      t.timestamps
    end
  end
end
