Deface::Override.new(
  :name               => 'change_main_nav_bar_grid_class',
  :virtual_path       => 'spree/shared/_main_nav_bar',
  :original           => '4949e03a4f0a179a0be65b8d4693b05ba17c0cbe',
  :set_attributes     => 'nav',
  :attributes         => {:class => 'span12 navbar'})
Deface::Override.new(
  :name               => 'wrapp_main_nav_bar_list_in_innher',
  :virtual_path       => 'spree/shared/_main_nav_bar',
  :original           => '442eefbb91b46a8773ce1de620f8f0a88a66caf1',
  :surround           => '#main-nav-bar',
  :text               => '<div class="navbar-inner"><%= render_original %></div>')
Deface::Override.new(
  :name               => 'change_main_nav_bar_nav_class',
  :virtual_path       => 'spree/shared/_main_nav_bar',
  :original           => '442eefbb91b46a8773ce1de620f8f0a88a66caf1',
  :set_attributes     => '#main-nav-bar',
  :attributes         => {:class => 'nav'})
Deface::Override.new(
  :name               => 'remove_link_to_cart_from_main_nav_bar',
  :virtual_path       => 'spree/shared/_main_nav_bar',
  :original           => '0d843946b3a53643c5a7da90a3a21610208db866',
  :remove             => '#link-to-cart',
  :attributes         => {:class => 'span12'})
