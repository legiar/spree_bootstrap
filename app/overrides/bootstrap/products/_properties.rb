Deface::Override.new(
  :name               => 'set_product_properties_table_class',
  :virtual_path       => 'spree/products/_properties',
  :set_attributes     => 'table',
  :attributes         => {:class => 'table table-bordered'})
