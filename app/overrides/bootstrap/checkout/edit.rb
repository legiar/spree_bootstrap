Deface::Override.new(
  :name               => 'set_checkout_title_grid_class',
  :virtual_path       => 'spree/checkout/edit',
  :set_attributes     => '[data-hook="checkout_title"]',
  :attributes         => {:class => 'span5'})
Deface::Override.new(
  :name               => 'set_checkout_progress_grid_class',
  :virtual_path       => 'spree/checkout/edit',
  :set_attributes     => '[data-hook="checkout_progress"]',
  :attributes         => {:class => 'span7'})
Deface::Override.new(
  :name               => 'set_checkout_form_wrapper_grid_class',
  :virtual_path       => 'spree/checkout/edit',
  :set_attributes     => '[data-hook="checkout_form_wrapper"]',
  :attributes         => {"data-erb-class" => "<%= if @order.state != 'confirm' then 'span9' else 'span12' end %>"})
Deface::Override.new(
  :name               => 'set_checkout_summary_box_grid_class',
  :virtual_path       => 'spree/checkout/edit',
  :set_attributes     => '[data-hook="checkout_summary_box"]',
  :attributes         => {:class => 'span3'})
Deface::Override.new(
  :name               => 'wrap_checkout_stage_in_row_class',
  :virtual_path       => 'spree/checkout/edit',
  :surround           => 'code[erb-loud]:contains("render @order.state")',
  :text               => '<div class="row"><%= render_original %></div>')

