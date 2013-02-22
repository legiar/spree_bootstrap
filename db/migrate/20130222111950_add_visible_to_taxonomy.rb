class AddVisibleToTaxonomy < ActiveRecord::Migration

  def change
    add_column :spree_taxonomies, :visible, :boolean, :null => false, :default => true
  end

end
