require 'active_support/concern'

module SpreeBootstrap
  module Settings
    extend ActiveSupport::Concern

    def read_default_setting(name)
      default_settings[name]
    end

    private

    def default_settings
      self.class.default_settings
    end

    module ClassMethods

      def setting(name, default)
        default_settings[name] = default
        unless respond_to?(name)
          attr_accessor(name)

          class_eval <<-EOC, __FILE__, __LINE__ + 1
            def #{name}
              if instance_variable_defined? :@#{name}
                @#{name}
              else
                read_default_setting(:#{name})
              end
            end
          EOC
        end
      end

      def deprecated_setting(name, default, message = nil)
        message = message || "The #{name} setting is deprecated and will be removed."
        setting(name, default)
        ActiveAdmin::Deprecation.deprecate self, name, message
        ActiveAdmin::Deprecation.deprecate self, :"#{name}=", message
      end

      def default_settings
        @default_settings ||= {}
      end

    end
  end
end
