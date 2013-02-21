Deface::Override.new(
  :name               => 'wrap_signup_block',
  :virtual_path       => 'spree/user_registrations/new',
  :surround           => '[data-hook="signup"]',
  :text               => '<div class="well"><%= render_original %></div>')
