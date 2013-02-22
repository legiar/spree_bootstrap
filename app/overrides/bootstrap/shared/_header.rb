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
Deface::Override.new(
  :name               => 'change_logo_grid_class',
  :virtual_path       => 'spree/shared/_header',
  :set_attributes     => '#logo',
  :attributes         => {:class => 'span4'})

