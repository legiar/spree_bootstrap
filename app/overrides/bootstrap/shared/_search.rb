Deface::Override.new(
  :name               => 'change_search_form_class',
  :virtual_path       => 'spree/shared/_search',
  :replace            => 'code:contains("form_tag")',
  :text               => '<%= form_tag spree.products_path, :method => :get, :class => "form-search" do %>')
Deface::Override.new(
  :name               => 'remove_taxon_search_select',
  :virtual_path       => 'spree/shared/_search',
  :remove             => 'code:contains("select_tag :taxon")')
Deface::Override.new(
  :name               => 'change_search_input_field_class',
  :virtual_path       => 'spree/shared/_search',
  :replace            => 'code:contains("search_field_tag")',
  :text               => '<%= search_field_tag :keywords, params[:keywords], :placeholder => t(:search), :class => "search-query" %>')
Deface::Override.new(
  :name               => 'remove_search_button',
  :virtual_path       => 'spree/shared/_search',
  :remove             => 'code:contains("submit_tag t(:search)")')
