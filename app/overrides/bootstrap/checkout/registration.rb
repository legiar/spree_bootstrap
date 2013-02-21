Deface::Override.new(
  :name               => 'set_checkout_registration_grid_class',
  :virtual_path       => 'spree/checkout/registration',
  :set_attributes     => '#registration',
  :attributes         => {:class => 'row'})
Deface::Override.new(
  :name               => 'set_checkout_registration_account_grid_class',
  :virtual_path       => 'spree/checkout/registration',
  :set_attributes     => '#account',
  :attributes         => {:class => 'span5'})

if Spree::Config[:allow_guest_checkout]
  Deface::Override.new(
    :name               => 'set_checkout_registration_guest_grid_class',
    :virtual_path       => 'spree/checkout/registration',
    :set_attributes     => '#guest_checkout',
    :attributes         => {:class => 'span5'})
  Deface::Override.new(
    :name               => 'wrap_checkout_registration_guest_in_well',
    :virtual_path       => 'spree/checkout/registration',
    :surround_contents  => 'code[erb-loud]:contains("form_for")',
    :closing_selector   => 'code[erb-silent]:contains("end")',
    :text               => '<div class="well"><%= render_original %></div>')
end

