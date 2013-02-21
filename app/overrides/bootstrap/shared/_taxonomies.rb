Deface::Override.new(
  :name               => 'add_taxonomies_well_class',
  :virtual_path       => 'spree/shared/_taxonomies',
  :add_to_attributes  => '#taxonomies',
  :attributes         => {:class => 'well well-small'})
Deface::Override.new(
  :name               => 'wrap_taxonomies_with_list',
  :virtual_path       => 'spree/shared/_taxonomies',
  :surround_contents  => '#taxonomies',
  :text               => '<ul class="nav nav-list"><%= render_original %></ul>')

Deface::Override.new(
  :name               => 'replace_root_taxonomy_tag',
  :virtual_path       => 'spree/shared/_taxonomies',
  :replace            => 'h6.taxonomy-root',
  :text               => %q{
    <li class="nav-header taxonomy-root">
      <%= t(:shop_by_taxonomy, :taxonomy => taxonomy.name) %>
    </li>
  })
