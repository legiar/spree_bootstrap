Deface::Override.new(
  :name               => 'wrap_login_block',
  :virtual_path       => 'spree/user_sessions/new',
  :original           => 'bb37e9ca40d7eaae0689e1d29ed2389c300b8eb8',
  :surround           => '#existing-customer',
  :text               => '<div class="well"><%= render_original %></div>')
