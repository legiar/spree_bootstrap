Deface::Override.new(
  :name               => 'wrap_taxonomies_with_list',
  :virtual_path       => 'spree/shared/_filters',
  :surround_contents  => 'code[erb-silent]:contains("unless filters.empty?")',
  :closing_selector   => 'code[erb-silent]:contains("end"):last',
  :text               => '<div class="well well-small"><%= render_original %></div>')
