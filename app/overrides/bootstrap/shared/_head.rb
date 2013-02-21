Deface::Override.new(
  :name               => 'add_modernizr_to_head',
  :virtual_path       => 'spree/shared/_head',
  :original           => 'b7ad84db3162a7f3a6b3286677d73ba1ee84f047',
  :insert_after       => 'code[erb-loud]:contains("csrf_meta_tags")',
  :text               => '<%= javascript_include_tag "modernizr" %>')
Deface::Override.new(
  :name               => 'add_x-ua_header',
  :virtual_path       => 'spree/shared/_head',
  :original           => 'f964b9170d6cf9cdab8afe67b4e1b39bba96dd3c',
  :insert_before      => 'meta[charset]',
  :text               => '<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />')
