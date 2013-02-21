Deface::Override.new(
  :name               => 'set_billing_fieldset_wrapper_grid_class',
  :virtual_path       => 'spree/checkout/_summary',
  :set_attributes     => '[data-hook="order_summary"]',
  :attributes         => {:class => 'table table-bordered'})
