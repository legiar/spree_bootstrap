Deface::Override.new(
  :name               => 'wrap_account_summary_content',
  :virtual_path       => 'spree/users/show',
  :surround_contents  => '[data-hook="account_summary"]',
  :text               => '<div class="well"><%= render_original ></div>')
Deface::Override.new(
  :name               => 'set_account_order_summary_table_class',
  :virtual_path       => 'spree/users/show',
  :add_to_attributes  => 'table.order-summary',
  :attributes         => {:class => 'table table-bordered'})
