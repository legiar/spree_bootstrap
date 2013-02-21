Deface::Override.new(
  :name               => 'wrap_forgot_password_block',
  :virtual_path       => 'spree/user_passwords/new',
  :original           => 'd935623f189120a89aa58c78b9a42b4cfc0e8d5a',
  :surround           => '#forgot-password',
  :text               => '<div class="well"><%= render_original %></div>')
