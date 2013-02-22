Deface::Override.new(
  :name               => 'add_feature_products',
  :virtual_path       => 'spree/home/index',
  :insert_before      => '[data-hook="homepage_products"]',
  :partial            => 'spree/home/featured_products')
