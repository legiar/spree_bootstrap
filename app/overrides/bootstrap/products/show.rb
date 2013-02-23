if SpreeBootstrap::Config.show_sidebar_on_product_page
  Deface::Override.new(
    :name               => 'add_sidebar_to_product_show',
    :virtual_path       => 'spree/products/show',
    :insert_before      => '[data-hook="product_show"]',
    :text               => %Q{
      <% content_for :sidebar do %>
        <div data-hook="homepage_sidebar_navigation">
          <%= render :partial => 'spree/shared/taxonomies' %>
        </div>
      <% end %>
    })
end

Deface::Override.new(
  :name               => 'wrap_product_show_in_row_class',
  :virtual_path       => 'spree/products/show',
  :surround_contents  => '[data-hook="product_show"]',
  :text               => '<div class="row"><%= render_original %></div>')

Deface::Override.new(
  :name               => 'set_product_show_left_grid_class',
  :virtual_path       => 'spree/products/show',
  :set_attributes     => '[data-hook="product_left_part"]',
  :attributes         => {:class => SpreeBootstrap::Config.product_left_grid_class})
Deface::Override.new(
  :name               => 'remove_product_show_left_wrap_row_class',
  :virtual_path       => 'spree/products/show',
  :set_attributes     => '[data-hook="product_left_part_wrap"]',
  :attributes         => {:class => ''})

Deface::Override.new(
  :name               => 'set_product_show_right_grid_class',
  :virtual_path       => 'spree/products/show',
  :set_attributes     => '[data-hook="product_right_part"]',
  :attributes         => {:class => SpreeBootstrap::Config.product_right_grid_class})
Deface::Override.new(
  :name               => 'remove_product_show_right_wrap_row_class',
  :virtual_path       => 'spree/products/show',
  :set_attributes     => '[data-hook="product_right_part_wrap"]',
  :attributes         => {:class => ''})

Deface::Override.new(
  :name               => 'add_thumbnail_class_to_product_main_image',
  :virtual_path       => 'spree/products/show',
  :add_to_attributes  => '#main-image',
  :attributes         => {:class => 'thumbnail'})

