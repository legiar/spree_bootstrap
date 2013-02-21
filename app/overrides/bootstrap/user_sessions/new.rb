Deface::Override.new(
  :name               => 'wrap_login_block',
  :virtual_path       => 'spree/user_sessions/new',
  :surround           => '[data-hook="login"]',
  :text               => '<div class="well"><%= render_original %></div>')
