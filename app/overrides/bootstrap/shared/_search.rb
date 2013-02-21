Deface::Override.new(
  :name               => 'change_search_form_class',
  :virtual_path       => 'spree/shared/_search',
  :original           => 'd9140abe317d4b5ab678e95e84ef7fbb126c8be2',
  :replace            => 'code:contains("form_tag")',
  :text               => '<%= form_tag spree.products_path, :method => :get, :class => "form-search" do %>')
Deface::Override.new(
  :name               => 'remove_taxon_search_select',
  :virtual_path       => 'spree/shared/_search',
  :original           => 'e8f14e0dca2192780916ebe264c88031d9f20b8c',
  :remove             => 'code:contains("select_tag :taxon")')
Deface::Override.new(
  :name               => 'change_search_input_field_class',
  :virtual_path       => 'spree/shared/_search',
  :original           => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902',
  :replace            => 'code:contains("search_field_tag")',
  :text               => '<%= search_field_tag :keywords, params[:keywords], :placeholder => t(:search), :class => "search-query" %>')
Deface::Override.new(
  :name               => 'remove_search_button',
  :virtual_path       => 'spree/shared/_search',
  :original           => '6f93bdeb574c6958115df9e610169b19f31fc681',
  :remove             => 'code:contains("submit_tag t(:search)")')
