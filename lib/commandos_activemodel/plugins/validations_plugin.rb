module Commandos
  module Plugins
    module ActiveModelPlugin
      module ClassMethods
        def self.extended(object)
          object.send(:include, ActiveModel::Validations)
        end
      end

      module InstanceMethods
        def valid?
          @valid ||= super
        end

        def invalid?
          !valid?
        end
      end
    end
  end
end
