Deface::Override.new(
  :name               => 'set_order_details_grid_class-1',
  :virtual_path       => 'spree/shared/_order_details',
  :add_to_attributes  => 'div.columns.four[1]',
  :attributes         => {:class => 'span3'})
Deface::Override.new(
  :name               => 'wrap_order_details-1',
  :virtual_path       => 'spree/shared/_order_details',
  :surround_contents  => 'div.columns.four[1]',
  :text               => '<div class="well"><%= render_original %></div>')

Deface::Override.new(
  :name               => 'set_order_details_grid_class-2',
  :virtual_path       => 'spree/shared/_order_details',
  :add_to_attributes  => 'div.columns.four[2]',
  :attributes         => {:class => 'span3'})
Deface::Override.new(
  :name               => 'wrap_order_details-2',
  :virtual_path       => 'spree/shared/_order_details',
  :surround_contents  => 'div.columns.four[2]',
  :text               => '<div class="well"><%= render_original %></div>')

Deface::Override.new(
  :name               => 'set_order_details_grid_class-3',
  :virtual_path       => 'spree/shared/_order_details',
  :add_to_attributes  => 'div.columns.four[3]',
  :attributes         => {:class => 'span3'})
Deface::Override.new(
  :name               => 'wrap_order_details-3',
  :virtual_path       => 'spree/shared/_order_details',
  :surround_contents  => 'div.columns.four[3]',
  :text               => '<div class="well"><%= render_original %></div>')

Deface::Override.new(
  :name               => 'set_order_details_grid_class-4',
  :virtual_path       => 'spree/shared/_order_details',
  :add_to_attributes  => 'div.columns.four[4]',
  :attributes         => {:class => 'span3'})
Deface::Override.new(
  :name               => 'wrap_order_details-4',
  :virtual_path       => 'spree/shared/_order_details',
  :surround_contents  => 'div.columns.four[4]',
  :text               => '<div class="well"><%= render_original %></div>')

Deface::Override.new(
  :name               => 'set_order_details_table_class',
  :virtual_path       => 'spree/shared/_order_details',
  :add_to_attributes  => '[data-hook="order_details"]',
  :attributes         => {:class => 'index table table-bordered'})
