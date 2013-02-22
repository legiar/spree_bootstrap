require 'yaml'
require 'erb'
require 'open-uri'

module SpreeBootstrap
  class Environment
    include SpreeBootstrap::Settings

    setting :layout, :fixed
    setting :sidebar_enabled, true
    setting :sidebar_grid_class, "span3"
    setting :content_grid_class, "span9"

    def initialize
      config = Rails.root.join("config", "bootstrap.yml")
      if File.exists?(config)
        content = open(config).read
        hash = content.empty? ? {} : YAML.load(ERB.new(content).result).to_hash
        hash[Rails.env].each do |key, val|
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
