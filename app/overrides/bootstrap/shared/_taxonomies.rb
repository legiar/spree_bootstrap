unless SpreeBootstrap::Config.show_taxonomy_in_sidebar
  Deface::Override.new(
    :name               => 'add_taxonomies_well_class',
    :virtual_path       => 'spree/shared/_taxonomies',
    :remove             => '#taxonomies')
else
  Deface::Override.new(
    :name               => 'add_taxonomies_well_class',
    :virtual_path       => 'spree/shared/_taxonomies',
    :add_to_attributes  => '#taxonomies',
    :attributes         => {:class => 'well well-small'})
  if SpreeBootstrap::Config.sidebar_taxonomy_in_one_list
    Deface::Override.new(
      :name               => 'wrap_taxonomies_with_list',
      :virtual_path       => 'spree/shared/_taxonomies',
      :surround_contents  => '#taxonomies',
      :text               => %Q{
        <ul class="nav #{SpreeBootstrap::Config.sidebar_taxonomy_list_class}">
          <%= render_original %>
        </ul>
      })

    Deface::Override.new(
      :name               => 'replace_root_taxonomy_tag',
      :virtual_path       => 'spree/shared/_taxonomies',
      :replace            => 'h6.taxonomy-root',
      :text               => %Q{
        <li class="#{SpreeBootstrap::Config.sidebar_taxonomy_list_class} taxonomy-root">
          <%= link_to t(:shop_by_taxonomy, :taxonomy => taxonomy.name), seo_url(taxonomy.root) %>
        </li>
      })
  end

  Deface::Override.new(
    :name               => 'exclude_hidden_taxonomies',
    :virtual_path       => 'spree/shared/_taxonomies',
    :replace            => 'code:contains("get_taxonomies.each")',
    :text               => '<% get_taxonomies.select{|t| t.visible?}.each do |taxonomy| %>')
end