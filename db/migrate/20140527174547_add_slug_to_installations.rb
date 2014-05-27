class AddSlugToInstallations < ActiveRecord::Migration
  def change
    add_column :installations, :slug, :string
    add_index :installations, :slug
  end
end
