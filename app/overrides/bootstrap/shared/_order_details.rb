Deface::Override.new(
  :name               => 'set_order_details_grid_class-1',
  :virtual_path       => 'spree/shared/_order_details',
  :original           => '72e9b2eafdadd5dbcc5e56281e30d3330a9ea597',
  :add_to_attributes  => 'div.columns.four[1]',
  :attributes         => {:class => 'span3'})
Deface::Override.new(
  :name               => 'wrap_order_details-1',
  :virtual_path       => 'spree/shared/_order_details',
  :original           => 'aeca8f05f7bbeff6bb43047e48588c5bcf04b65b',
  :surround_contents  => 'div.columns.four[1]',
  :text               => '<div class="well"><%= render_original %></div>')

Deface::Override.new(
  :name               => 'set_order_details_grid_class-2',
  :virtual_path       => 'spree/shared/_order_details',
  :original           => '0dbbc1b9265ea0d7445ea545ccf399471e683623',
  :add_to_attributes  => 'div.columns.four[2]',
  :attributes         => {:class => 'span3'})
Deface::Override.new(
  :name               => 'wrap_order_details-2',
  :virtual_path       => 'spree/shared/_order_details',
  :original           => 'a404ad5bee1c43354144f98d8d6702f91a46b1b6',
  :surround_contents  => 'div.columns.four[2]',
  :text               => '<div class="well"><%= render_original %></div>')

Deface::Override.new(
  :name               => 'set_order_details_grid_class-3',
  :virtual_path       => 'spree/shared/_order_details',
  :original           => '4693bd0c77c9b67abd22e2d1347c64b82cd3adc1',
  :add_to_attributes  => 'div.columns.four[3]',
  :attributes         => {:class => 'span3'})
Deface::Override.new(
  :name               => 'wrap_order_details-3',
  :virtual_path       => 'spree/shared/_order_details',
  :original           => '7a28649a1810c236b6b2f3b17f3f3ce42fb215fe',
  :surround_contents  => 'div.columns.four[3]',
  :text               => '<div class="well"><%= render_original %></div>')

Deface::Override.new(
  :name               => 'set_order_details_grid_class-4',
  :virtual_path       => 'spree/shared/_order_details',
  :original           => '0f33525a0d9b6885e3af9e06a8a12c399b4b7dde',
  :add_to_attributes  => 'div.columns.four[4]',
  :attributes         => {:class => 'span3'})
Deface::Override.new(
  :name               => 'wrap_order_details-4',
  :virtual_path       => 'spree/shared/_order_details',
  :original           => 'eab30d3180e00874668af45d7136cb15291e9d08',
  :surround_contents  => 'div.columns.four[4]',
  :text               => '<div class="well"><%= render_original %></div>')

Deface::Override.new(
  :name               => 'set_order_details_table_class',
  :virtual_path       => 'spree/shared/_order_details',
  :original           => '82d4cabdc102a6446a2652b0518215b3bfddc428',
  :add_to_attributes  => '[data-hook="order_details"]',
  :attributes         => {:class => 'index table table-bordered'})
