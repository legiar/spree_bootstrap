Deface::Override.new(
  :name               => 'change_products_list_class',
  :virtual_path       => 'spree/shared/_products',
  :set_attributes     => '#products',
  :attributes         => {:class => 'product-listing thumbnails'})

Deface::Override.new(
  :name               => 'group_products_list_by_3_in_row',
  :virtual_path       => 'spree/shared/_products',
  :surround           => '#products',
  :text               => '<% products.select{|p| p.on_display?}.in_groups_of(3, false).each do |product_row| %><%= render_original %><% end %>')
Deface::Override.new(
  :name               => 'show_products_list_by_3_in_row',
  :virtual_path       => 'spree/shared/_products',
  :replace            => 'code[erb-silent]:contains("products.each do |product|")',
  :text               => '<% product_row.each do |product| %>')

Deface::Override.new(
  :name               => 'add_products_list_product_grid_class',
  :virtual_path       => 'spree/shared/_products',
  :set_attributes     => '#products > li',
  :attributes         => {:class => 'span3'})

Deface::Override.new(
  :name               => 'replace_products_list_item',
  :virtual_path       => 'spree/shared/_products',
  :replace_contents   => '#products > li',
  :text               => %q{
    <div class="thumbnail">
      <%= link_to small_image(product, :itemprop => "image"), product, :itemprop => 'url' %>
      <div class="caption">
        <h3><%= link_to truncate(product.name, :length => 50), product, :class => 'info', :itemprop => "name", :title => product.name %></h3>
        <p class="actions">
          <span class="price selling" itemprop="price"><%= product.price_in(current_currency).display_price %></span>
        </p>
    </div>
  })

#Deface::Override.new(
#  :name               => 'show_larger_image_in_product_list',
#  :virtual_path       => 'spree/shared/_products',
#  #:original           => 'a502603e78620ab295e76da5978b93396a712fbe',
#  :replace            => 'code[erb-loud]:contains("link_to small_image")',
#  :text               => '<%= link_to product_image(product, :itemprop => "image"), product, :itemprop => "url" %>')

Deface::Override.new(
  :name               => 'change_products_list_paginator_theme',
  :virtual_path       => 'spree/shared/_products',
  :replace            => 'code[erb-loud]:contains("paginate paginated_products")',
  :text               => '<%= paginate paginated_products, :theme => "spree" %>')
