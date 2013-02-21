Deface::Override.new(
  :name               => 'set_billing_fieldset_wrapper_grid_class',
  :virtual_path       => 'spree/checkout/_address',
  :set_attributes     => '[data-hook="billing_fieldset_wrapper"]',
  :attributes         => {:class => 'span4'})
Deface::Override.new(
  :name               => 'set_shipping_fieldset_wrapper_grid_class',
  :virtual_path       => 'spree/checkout/_address',
  :set_attributes     => '[data-hook="shipping_fieldset_wrapper"]',
  :attributes         => {:class => 'span4'})
Deface::Override.new(
  :name               => 'remove_hr_divider_from_checkout_address',
  :virtual_path       => 'spree/checkout/_address',
  :remove             => 'hr.clear')
