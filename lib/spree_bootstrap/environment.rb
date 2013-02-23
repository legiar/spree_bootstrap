require 'yaml'
require 'erb'
require 'open-uri'

module SpreeBootstrap
  class Environment
    include SpreeBootstrap::Settings

    setting :layout, :fixed

    setting :logo_grid_class, "span4"
    setting :topnav_grid_class, "span8"
    setting :mainnav_container, true
    setting :mainnav_grid_class, "span12"

    setting :sidebar_enabled, true
    setting :sidebar_grid_class, "span3"
    setting :content_grid_class, "span9"

    setting :show_taxonomy_in_sidebar, true
    setting :sidebar_taxonomy_in_one_list, false
    setting :sidebar_taxonomy_list_class, ""
    setting :sidebar_taxonomy_class, ""
    setting :sidebar_taxon_list_class, "nav nav-pills nav-stacked"

    setting :product_per_row, 3
    setting :product_in_row_grid_class, "span3"
    setting :show_larger_image_in_product_list, false

    setting :show_sidebar_on_product_page, false
    setting :product_left_grid_class, "span5"
    setting :product_right_grid_class, "span7"

    def initialize
      reload!
    end

    def reload!
      config = Rails.root.join("config", "bootstrap.yml")
      if File.exists?(config)
        content = open(config).read
        hash = content.empty? ? {} : YAML.load(ERB.new(content).result).to_hash
        hash.each do |key, val|
          self.class.setting key.to_sym, val
        end
      end
    end

    def container
      self.layout == :fixed ? "container" : "container-fluid"
    end

    def row
      self.layout == :fixed ? "row" : "row-fluid"
    end

  end
end
