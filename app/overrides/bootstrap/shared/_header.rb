Deface::Override.new(
  :name               => 'remove_header_grid_class',
  :virtual_path       => 'spree/shared/_header',
  :set_attributes     => '#header',
  :attributes         => {:class => ''})

Deface::Override.new(
  :name               => 'wrap_header_content_with_container_and_row_classes',
  :virtual_path       => 'spree/shared/_header',
  :surround_contents  => '#header',
  :text               => %Q{
    <div class="#{SpreeBootstrap::Config.container}">
      <div class="#{SpreeBootstrap::Config.row}">
        <%= render_original %>
      </div>
    </div>
  })

if SpreeBootstrap::Config.mainnav_container
  Deface::Override.new(
    :name               => 'remove_main_nav_bar_from_container',
    :virtual_path       => 'spree/shared/_header',
    :remove             => 'code:contains("spree/shared/main_nav_bar")')
  Deface::Override.new(
    :name               => 'add_main_nav_bar_outside_container',
    :virtual_path       => 'spree/shared/_header',
    :insert_bottom      => '#header',
    :text               => %Q{
      <div class="#{SpreeBootstrap::Config.container}">
        <div class="#{SpreeBootstrap::Config.row}">
          <%= render :partial => 'spree/shared/main_nav_bar' if store_menu? %>
        </div>
      </div>
    })
end

Deface::Override.new(
  :name               => 'change_logo_grid_class',
  :virtual_path       => 'spree/shared/_header',
  :set_attributes     => '#logo',
  :attributes         => {:class => SpreeBootstrap::Config.logo_grid_class})

