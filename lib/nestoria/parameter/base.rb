require "nestoria/helper/hash"
require "nestoria/helper/variable"
require "nestoria/exception"

module Nestoria

  module Parameter

    class Base

      protected

      def check_valid(options)
          hash? options
          blank? options
      end

      def hash?(value)
        if !value.is_a? Hash
          raise TypeError, "Argument is expected to be a Hash"
        end
      end

      def blank?(hash)
        if hash.has_blank?
          raise Nestoria::InsufficientArgumentsError, "Options cannot be provided as blank"
        end
      end

      def merge_options(options, defaults)
        @options = defaults.merge(options)
      end

    end

  end

end
