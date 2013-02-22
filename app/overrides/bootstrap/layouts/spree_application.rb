Deface::Override.new(
  :name               => 'remove_wrapper_grid_class',
  :virtual_path       => 'spree/layouts/spree_application',
  :set_attributes     => '#wrapper',
  :attributes         => {:class => ''})
Deface::Override.new(
  :name               => 'wrap_wrapper_content_in_row',
  :virtual_path       => 'spree/layouts/spree_application',
  :surround_contents  => '#wrapper',
  :text               => '<div class="row"><%= render_original %></div>')
Deface::Override.new(
  :name               => 'change_content_grid_class',
  :virtual_path       => 'spree/layouts/spree_application',
  :set_attributes     => '#content',
  :attributes         => {
    "data-erb-class" => '<%= !content_for?(:sidebar) ? "span12" : "span9" %>'
  })
Deface::Override.new(
  :name               => 'remove_breadcrumbs',
  :virtual_path       => 'spree/layouts/spree_application',
  :remove             => 'code[erb-loud]:contains("breadcrumbs")')
Deface::Override.new(
  :name               => 'add_breadcrumbs_into_content_area',
  :virtual_path       => 'spree/layouts/spree_application',
  :insert_top         => '#content',
  :text               => '<%= breadcrumbs(@taxon) %>')
