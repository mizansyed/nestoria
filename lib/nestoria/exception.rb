module Nestoria

    class InsufficientArgumentsError < StandardError;   end

    class NoAPIDataError < StandardError;   end

    class DisambiguationError < StandardError
      attr_reader :areas
      def initialize(areas)
        @areas = areas
      end
    end
end