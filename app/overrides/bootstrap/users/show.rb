Deface::Override.new(
  :name               => 'wrap_account_summary_content',
  :virtual_path       => 'spree/users/show',
  :original           => '3feb53ab80288983e150f01975514f0a4ad46224',
  :surround_contents  => '[data-hook="account_summary"]',
  :text               => '<div class="well"><%= render_original ></div>')
Deface::Override.new(
  :name               => 'set_account_order_summary_table_class',
  :virtual_path       => 'spree/users/show',
  :original           => '49cb86eef09afa5254e7cb0aa95e6d360d110cfa',
  :add_to_attributes  => 'table.order-summary',
  :attributes         => {:class => 'table table-bordered'})
