class AddSlugToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :slug, :string
    add_index :steps, :slug
  end
end
