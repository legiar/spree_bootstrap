Deface::Override.new(
  :name               => 'remove_inline_class_from_product_thumbnails',
  :virtual_path       => 'spree/products/_thumbnails',
  :remove_from_attributes  => 'ul#product-thumbnails',
  :attributes         => {:class => 'inline'})

Deface::Override.new(
  :name               => 'add_thumbnail_class_to_product_thumbnail_image',
  :virtual_path       => 'spree/products/_thumbnails',
  :add_to_attributes  => 'ul#product-thumbnails > li',
  :attributes         => {:class => 'thumbnail'})
