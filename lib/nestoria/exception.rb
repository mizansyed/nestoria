module Nestoria

    #class BadRequestError < StandardError; end

    #class MethodNotAllowedError < StandardError; end

    #class InternalServerError < StandardError; end

    class InsufficientArgumentsError < StandardError;   end

    class NoAPIDataError < StandardError;   end

    class DisambiguationError < StandardError
      attr_reader :areas
      def initialize(areas)
        @areas = areas
      end
    end
end