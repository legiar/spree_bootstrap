Deface::Override.new(
  :name               => 'remove_header_grid_class',
  :virtual_path       => 'spree/shared/_header',
  :original           => 'fe273d1ea4ee64cf9b0d97747491aa1df868dc16',
  :set_attributes     => '#header',
  :attributes         => {:class => ''})
Deface::Override.new(
  :name               => 'wrap_header_content_with_container_and_row_classes',
  :virtual_path       => 'spree/shared/_header',
  :original           => '9b1f01c2740b682af6b563643337253e68d9e176',
  :surround_contents  => '#header',
  :text               => '<div class="container"><div class="row"><%= render_original %></div></div>')
Deface::Override.new(
  :name               => 'change_logo_grid_class',
  :virtual_path       => 'spree/shared/_header',
  :original           => '1d1c79977051248cdd96489f1225bfd1f64dd1ef',
  :set_attributes     => '#logo',
  :attributes         => {:class => 'span4'})

