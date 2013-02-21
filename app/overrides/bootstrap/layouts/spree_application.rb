Deface::Override.new(
  :name               => 'remove_wrapper_grid_class',
  :virtual_path       => 'spree/layouts/spree_application',
  :original           => 'b783e7268d2ab196e65a32bc048cf6af2627dd06',
  :set_attributes     => '#wrapper',
  :attributes         => {:class => ''})
Deface::Override.new(
  :name               => 'wrap_wrapper_content_in_row',
  :virtual_path       => 'spree/layouts/spree_application',
  :original           => 'b0e13cc683c2599eb20a7c22e682ceb9248394f3',
  :surround_contents  => '#wrapper',
  :text               => '<div class="row"><%= render_original %></div>')
Deface::Override.new(
  :name               => 'change_content_grid_class',
  :virtual_path       => 'spree/layouts/spree_application',
  :original           => 'd220344b9a417a28f4acd857ef89d462dd9e2329',
  :set_attributes     => '#content',
  :attributes         => {
    "data-erb-class" => '<%= !content_for?(:sidebar) ? "span12" : "span9" %>'
  })