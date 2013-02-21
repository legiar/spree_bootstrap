Deface::Override.new(
  :name               => 'set_checkout_title_grid_class',
  :virtual_path       => 'spree/checkout/edit',
  :original           => 'a7718072f6e8422dba7b9a7bc80bc08cfe3295c7',
  :set_attributes     => '[data-hook="checkout_title"]',
  :attributes         => {:class => 'span5'})
Deface::Override.new(
  :name               => 'set_checkout_progress_grid_class',
  :virtual_path       => 'spree/checkout/edit',
  :original           => 'd5157e5dbca8e3402a8c29d20f95be6150e6661a',
  :set_attributes     => '[data-hook="checkout_progress"]',
  :attributes         => {:class => 'span7'})
Deface::Override.new(
  :name               => 'set_checkout_form_wrapper_grid_class',
  :virtual_path       => 'spree/checkout/edit',
  :original           => 'b91cb5e8b5a736c75f60c6df7984534d98c3eb5d',
  :set_attributes     => '[data-hook="checkout_form_wrapper"]',
  :attributes         => {"data-erb-class" => "<%= if @order.state != 'confirm' then 'span9' else 'span12' end %>"})
Deface::Override.new(
  :name               => 'set_checkout_summary_box_grid_class',
  :virtual_path       => 'spree/checkout/edit',
  :original           => '60b9b1a39079f4efa85ff0425108edf671349d4f',
  :set_attributes     => '[data-hook="checkout_summary_box"]',
  :attributes         => {:class => 'span3'})
Deface::Override.new(
  :name               => 'wrap_checkout_stage_in_row_class',
  :virtual_path       => 'spree/checkout/edit',
  :original           => 'a402c0339058d12616771a3178f447549d9149cf',
  :surround           => 'code[erb-loud]:contains("render @order.state")',
  :text               => '<div id="row"><%= render_original %></div>')

