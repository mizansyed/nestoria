require "nestoria/parameter/base"
require "nestoria/enum"

module Nestoria
  module Parameter
    class RecordParameter < Nestoria::Parameter::Base

      include VariableHelper

      attr_reader :number_of_results, :page, :sort

      def initialize(options={})
        check_valid(options)
        defaults = {
            :number_of_results    => 20,
            :page                 => 1,
            :sort                 => Nestoria::Constants::SortBy::RELEVANCY
        }
        merge_options(options, defaults)
        setup_vars
      end
    end
  end
end
