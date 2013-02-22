Deface::Override.new(
  :name               => 'replace_top_nav_bar_grid_class',
  :virtual_path       => 'spree/shared/_nav_bar',
  :set_attributes     => '#top-nav-bar',
  :attributes         => {:class => 'span8'})
Deface::Override.new(
  :name               => 'add_top_nav_bar_list_class',
  :virtual_path       => 'spree/shared/_nav_bar',
  :set_attributes     => '#nav-bar',
  :attributes         => {:class => 'nav nav-pills'})
Deface::Override.new(
  :name               => 'add_cart_link_to_top_nav_bar',
  :virtual_path       => 'spree/shared/_nav_bar',
  :insert_top         => '#nav-bar',
  :text               => '<li id="link-to-cart" data-hook><%= link_to_cart %></li>')
Deface::Override.new(
  :name               => 'replace_login_with_icon_in_top_nav_bar',
  :virtual_path       => 'spree/shared/_nav_bar',
  :replace            => 'code:contains("t(:login)")',
  :text               => '<%= link_to content_tag(:i, "", :class => "icon-signin"), spree.login_path, :title => t(:login) %>')
Deface::Override.new(
  :name               => 'replace_logout_with_icon_in_top_nav_bar',
  :virtual_path       => 'spree/shared/_nav_bar',
  :replace            => 'code:contains("t(:logout)")',
  :text               => '<%= link_to content_tag(:i, "", :class => "icon-signout"), spree.destroy_user_session_path, :title => t(:logout) %>')
Deface::Override.new(
  :name               => 'replace_my_account_with_icon_in_top_nav_bar',
  :virtual_path       => 'spree/shared/_nav_bar',
  :replace            => 'code:contains("t(:my_account)")',
  :text               => '<%= link_to content_tag(:i, "", :class => "icon-user"), spree.account_path, :title => t(:my_account) %>')
