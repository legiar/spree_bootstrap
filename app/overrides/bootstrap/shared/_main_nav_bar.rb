Deface::Override.new(
  :name               => 'wrap_main_nav_bar_with_row',
  :virtual_path       => 'spree/shared/_main_nav_bar',
  :surround           => 'nav',
  :text               => %Q{
    <div class="#{SpreeBootstrap::Config.row}">
      <%= render_original %>
    </div>
  })
Deface::Override.new(
  :name               => 'change_main_nav_bar_grid_class',
  :virtual_path       => 'spree/shared/_main_nav_bar',
  :set_attributes     => 'nav',
  :attributes         => {:class => 'span12 navbar'})
Deface::Override.new(
  :name               => 'wrapp_main_nav_bar_list_in_innher',
  :virtual_path       => 'spree/shared/_main_nav_bar',
  :surround           => '#main-nav-bar',
  :text               => '<div class="navbar-inner"><%= render_original %></div>')
Deface::Override.new(
  :name               => 'change_main_nav_bar_nav_class',
  :virtual_path       => 'spree/shared/_main_nav_bar',
  :set_attributes     => '#main-nav-bar',
  :attributes         => {:class => 'nav'})
Deface::Override.new(
  :name               => 'remove_link_to_cart_from_main_nav_bar',
  :virtual_path       => 'spree/shared/_main_nav_bar',
  :remove             => '#link-to-cart',
  :attributes         => {:class => 'span12'})
