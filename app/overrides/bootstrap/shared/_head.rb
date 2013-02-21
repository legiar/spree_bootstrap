Deface::Override.new(
  :name               => 'add_modernizr_to_head',
  :virtual_path       => 'spree/shared/_head',
  :insert_after       => 'code[erb-loud]:contains("csrf_meta_tags")',
  :text               => '<%= javascript_include_tag "modernizr" %>')
Deface::Override.new(
  :name               => 'add_x-ua_header',
  :virtual_path       => 'spree/shared/_head',
  :insert_before      => 'meta[charset]',
  :text               => '<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />')
