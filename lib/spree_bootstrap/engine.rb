require 'active_support/concern'
module SpreeBootstrap
  module AppConfiguration
    extend ActiveSupport::Concern

    def bootstrap
      yield(SpreeBootstrap::Config) if block_given?
      SpreeBootstrap::Config
    end

  end
end

module SpreeBootstrap
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_bootstrap'

    config.autoload_paths += %W(#{config.root}/lib)

    initializer "spree_bootstrap.environment", :before => :load_config_initializers do |app|
      app.config.spree_bootstrap = SpreeBootstrap::Environment.new
      SpreeBootstrap::Config = app.config.spree_bootstrap
      Spree::AppConfiguration.send(:include, SpreeBootstrap::AppConfiguration)
    end

    # Rails Dev environment should reload the yml config on every request
    if Rails.env.development?
      initializer "spree_bootstrap.reload_on_development" do |app|
        ActionController::Base.class_eval do
          prepend_before_filter do
            ::SpreeBootstrap::Config.reload!
            Rails.application.config.deface.overrides.load_all(Rails.application)
          end
        end
      end
    end

    initializer "spree_bootstrap.assets", group: :all do |app|
      app.config.assets.precompile += %w[
        jquery.js
        modernizr.js
      ]
    end

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
