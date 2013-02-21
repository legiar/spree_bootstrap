Deface::Override.new(
  :name               => 'set_billing_fieldset_wrapper_grid_class',
  :virtual_path       => 'spree/checkout/_address',
  :original           => 'e42ce3dc85b9d4f35b5966ffb481df8c7d7f8625',
  :set_attributes     => '[data-hook="billing_fieldset_wrapper"]',
  :attributes         => {:class => 'span4'})
Deface::Override.new(
  :name               => 'set_shipping_fieldset_wrapper_grid_class',
  :virtual_path       => 'spree/checkout/_address',
  :original           => '53e219f90a2e1ba702a767261d0c2afe100ac751',
  :set_attributes     => '[data-hook="shipping_fieldset_wrapper"]',
  :attributes         => {:class => 'span4'})
Deface::Override.new(
  :name               => 'remove_hr_divider_from_checkout_address',
  :virtual_path       => 'spree/checkout/_address',
  :original           => 'cf96be953891208be6a2df49c233e1512d31151f',
  :remove             => 'hr.clear')
