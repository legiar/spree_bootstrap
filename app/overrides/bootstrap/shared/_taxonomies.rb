Deface::Override.new(
  :name               => 'add_taxonomies_well_class',
  :virtual_path       => 'spree/shared/_taxonomies',
  :original           => 'e8fa8dd2075817aa3ddced3ee631b900ce48e5c5',
  :add_to_attributes  => '#taxonomies',
  :attributes         => {:class => 'well well-small'})
Deface::Override.new(
  :name               => 'wrap_taxonomies_with_list',
  :virtual_path       => 'spree/shared/_taxonomies',
  :original           => '9415dfaa8e4c5697d31250297a253da44d431996',
  :surround_contents  => '#taxonomies',
  :text               => '<ul class="nav nav-list"><%= render_original %></ul>')

Deface::Override.new(
  :name               => 'replace_root_taxonomy_tag',
  :virtual_path       => 'spree/shared/_taxonomies',
  :original           => '981b4aee72eeb689643fc8097ad99c50bb8fcd08',
  :replace            => 'h6.taxonomy-root',
  :text               => %q{
    <li class="nav-header taxonomy-root">
      <%= t(:shop_by_taxonomy, :taxonomy => taxonomy.name) %>
    </li>
  })
