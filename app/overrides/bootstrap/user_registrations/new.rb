Deface::Override.new(
  :name               => 'wrap_signup_block',
  :virtual_path       => 'spree/user_registrations/new',
  :original           => '96df20d7757d08469b83254e4c1642b43e982d9a',
  :surround           => '#new-customer',
  :text               => '<div class="well"><%= render_original %></div>')
