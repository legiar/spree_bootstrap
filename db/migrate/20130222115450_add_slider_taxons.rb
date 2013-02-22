class AddSliderTaxons < ActiveRecord::Migration
  def up
    tags      = Spree::Taxonomy.create(:name => 'Tags', :visible => false)
    slider    = Spree::Taxon.create({:taxonomy_id => tags.id, :name => 'Slider'})
    featured  = Spree::Taxon.create({:taxonomy_id => tags.id, :name => 'Featured'})
    latest    = Spree::Taxon.create({:taxonomy_id => tags.id, :name => 'Latest'})
  end

  def down
    Spree::Taxonomy.where(:name => 'Tags').first.destroy()
  end
end
