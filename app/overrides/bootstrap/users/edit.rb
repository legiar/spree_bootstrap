Deface::Override.new(
  :name               => 'wrap_edit_user',
  :virtual_path       => 'spree/users/edit',
  :surround           => 'code[erb-loud]:contains("form_for")',
  :closing_selector   => 'code[erb-silent]:contains("end"):last',
  :text               => '<div class="well"><%= render_original %></div>')
