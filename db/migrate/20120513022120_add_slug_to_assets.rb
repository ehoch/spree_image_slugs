class AddSlugToAssets < ActiveRecord::Migration
  def change
    add_column :spree_assets, :slug, :string, :limit => 64
    add_index :spree_assets, :slug
  end
end
