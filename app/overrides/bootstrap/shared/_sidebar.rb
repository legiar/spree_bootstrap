Deface::Override.new(
  :name               => 'change_sidebar_grid_class',
  :virtual_path       => 'spree/shared/_sidebar',
  :set_attributes     => '#sidebar',
  :attributes         => {:class => 'span3'})
