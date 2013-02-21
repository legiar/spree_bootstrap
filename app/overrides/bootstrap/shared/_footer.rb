Deface::Override.new(
  :name               => 'remove_footer_grid_class',
  :virtual_path       => 'spree/shared/_footer',
  :original           => 'cc62a7bf1556a62078d5b99f94cb7963dded8a12',
  :set_attributes     => '#footer',
  :attributes         => {:class => ''})
Deface::Override.new(
  :name               => 'wrap_footer_content_with_container_and_row_classes',
  :virtual_path       => 'spree/shared/_footer',
  :original           => '80ce785733653b31c6e62aff6a63456467a8fe57',
  :surround_contents  => '#footer',
  :text               => '<div class="container"><div class="row"><%= render_original %></div></div>')
Deface::Override.new(
  :name               => 'change_footer-left_grid_class',
  :virtual_path       => 'spree/shared/_footer',
  :original           => '6ae1a223848ff1a260221748a0206fc84597003c',
  :set_attributes     => '#footer-left',
  :attributes         => {:class => 'span6'})
Deface::Override.new(
  :name               => 'change_footer-right_grid_class',
  :virtual_path       => 'spree/shared/_footer',
  :original           => '9ca1296b0b8896708920ca0894595932dbca407e',
  :set_attributes     => '#footer-right',
  :attributes         => {:class => 'span6'})
