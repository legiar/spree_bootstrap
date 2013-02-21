Deface::Override.new(
  :name               => 'set_checkout_registration_grid_class',
  :virtual_path       => 'spree/checkout/registration',
  :original           => '65a78586d5d225e64d2550eff16021526032b742',
  :set_attributes     => '#registration',
  :attributes         => {:class => 'row'})
Deface::Override.new(
  :name               => 'set_checkout_registration_account_grid_class',
  :virtual_path       => 'spree/checkout/registration',
  :original           => 'a0ca82ef8a140c42264ead3b24856cfcec164de9',
  :set_attributes     => '#account',
  :attributes         => {:class => 'span5'})
Deface::Override.new(
  :name               => 'set_checkout_registration_guest_grid_class',
  :virtual_path       => 'spree/checkout/registration',
  :original           => '6185a5cd913d8135d03f18fb2b3c9e78b2ca1c83',
  :set_attributes     => '#guest_checkout',
  :attributes         => {:class => 'span5'})
Deface::Override.new(
  :name               => 'wrap_checkout_registration_guest_in_well',
  :virtual_path       => 'spree/checkout/registration',
  :original           => '1b38a96ebd724b28c59a5481fe9af63c59e776ac',
  :surround_contents  => '#guest_checkout',
  :text               => '<div class="well"><%= render_original %></div>')
