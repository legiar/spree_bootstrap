Deface::Override.new(
  :name               => 'change_products_list_class',
  :virtual_path       => 'spree/shared/_products',
  :original           => 'e90036f2fc4166e77ae88b40dc29b95c5ac340c5',
  :set_attributes     => '#products',
  :attributes         => {:class => 'product-listing thumbnails'})

Deface::Override.new(
  :name               => 'group_products_list_by_3_in_row',
  :virtual_path       => 'spree/shared/_products',
  :original           => 'cae84370a252dddd3aacfafebacc71480414474a',
  :surround           => '#products',
  :text               => '<% products.select{|p| p.on_display?}.in_groups_of(3, false).each do |product_row| %><%= render_original %><% end %>')
Deface::Override.new(
  :name               => 'show_products_list_by_3_in_row',
  :virtual_path       => 'spree/shared/_products',
  :original           => 'a502603e78620ab295e76da5978b93396a712fbe',
  :replace            => 'code[erb-silent]:contains("products.each do |product|")',
  :text               => '<% product_row.each do |product| %>')

Deface::Override.new(
  :name               => 'add_products_list_product_grid_class',
  :virtual_path       => 'spree/shared/_products',
  :original           => 'b3487c6fa0b2bc8d5bdf4e1b79cf1880c8bbfb9a',
  :set_attributes     => '#products > li',
  :attributes         => {:class => 'span3'})

Deface::Override.new(
  :name               => 'replace_products_list_item',
  :virtual_path       => 'spree/shared/_products',
  :original           => '6e28e3db5b14d7c88354b1cc63bf1b935f0b1554',
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

