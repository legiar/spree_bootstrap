Deface::Override.new(
  :name               => 'replace_top_nav_bar_grid_class',
  :virtual_path       => 'spree/shared/_nav_bar',
  :original           => '7b8b4dca34f6155872ba6ad6dfc427c1274fe312',
  :set_attributes     => '#top-nav-bar',
  :attributes         => {:class => 'span8'})
Deface::Override.new(
  :name               => 'add_top_nav_bar_list_class',
  :virtual_path       => 'spree/shared/_nav_bar',
  :original           => '3119fec2949d16fb7cdc6fb4dda4ac5ad0d070ff',
  :set_attributes     => '#nav-bar',
  :attributes         => {:class => 'nav nav-pills'})
Deface::Override.new(
  :name               => 'add_cart_link_to_top_nav_bar',
  :virtual_path       => 'spree/shared/_nav_bar',
  :original           => 'b84382f1ac940904a505ccd6ab963c1126df23c2',
  :insert_top         => '#nav-bar',
  :text               => %q{
    <li id="link-to-cart" data-hook>
      <%= link_to content_tag(:i, "", :class => "icon-shopping-cart") + link_to_cart, spree.cart_path %>
    </li>
  })
Deface::Override.new(
  :name               => 'replace_login_with_icon_in_top_nav_bar',
  :virtual_path       => 'spree/shared/_nav_bar',
  :original           => '2ff7aa14d7fe73f533d5bc676fb6297da6eed545',
  :replace            => 'code:contains("t(:login)")',
  :text               => '<%= link_to content_tag(:i, "", :class => "icon-signin"), spree.login_path, :title => t(:login) %>')
Deface::Override.new(
  :name               => 'replace_logout_with_icon_in_top_nav_bar',
  :virtual_path       => 'spree/shared/_nav_bar',
  :original           => '0a911946c12fc6104420dafdaf7e9855cffc9b13',
  :replace            => 'code:contains("t(:logout)")',
  :text               => '<%= link_to content_tag(:i, "", :class => "icon-signout"), spree.destroy_user_session_path, :title => t(:logout) %>')
Deface::Override.new(
  :name               => 'replace_my_account_with_icon_in_top_nav_bar',
  :virtual_path       => 'spree/shared/_nav_bar',
  :original           => '724121e4a865f632fac0136d3389dcd2554cd8b1',
  :replace            => 'code:contains("t(:my_account)")',
  :text               => '<%= link_to content_tag(:i, "", :class => "icon-user"), spree.account_path, :title => t(:my_account) %>')
