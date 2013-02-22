Deface::Override.new(
  :name               => 'add_feature_products',
  :virtual_path       => 'spree/home/index',
  :insert_before      => '[data-hook="homepage_products"]',
  :partial            => 'home/featured_products')
