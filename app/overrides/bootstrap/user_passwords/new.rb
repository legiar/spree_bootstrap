Deface::Override.new(
  :name               => 'wrap_forgot_password_block',
  :virtual_path       => 'spree/user_passwords/new',
  :surround_contents  => 'code[erb-loud]:contains("form_for")',
  :closing_selector   => 'code[erb-silent]:contains("end")',
  :text               => '<div class="well"><%= render_original %></div>')
