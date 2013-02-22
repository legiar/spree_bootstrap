Deface::Override.new(
  :name               => 'add_visible_to_taxonomies_form',
  :virtual_path       => 'spree/admin/taxonomies/_form',
  :insert_bottom      => '[data-hook="admin_inside_taxonomy_form"]',
  :text               => %q{
  <%= f.field_container :visible do %>
    <%= f.label :visible, t(:visible) %><br />
    <%= error_message_on :taxonomy, :visible, :class => '' %>
    <%= check_box :taxonomy, :visible %>
  <% end %>
  })
