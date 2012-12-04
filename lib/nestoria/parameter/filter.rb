require "nestoria/parameter/base"
require "nestoria/enum"

module Nestoria

  module Parameter

    class FilterParameter < Nestoria::Parameter::Base

      include VariableHelper

      attr_reader :listing_type, :property_type, :price_min, :price_max, :bedroom_min,
                  :bedroom_max, :room_min, :room_max, :bathroom_min, :bathroom_max, :size_min, :size_max, :keywords,
                  :keywords_exclude, :has_photo, :updated_min


      def initialize(options={})
        raise(TypeError, "Argument is expected to be a Hash") unless options
        check_valid(options)
        defaults = {
            :listing_type   => Nestoria::Constants::ListingType::BUY,
            :property_type  => Nestoria::Constants::PropertyType::ALL,
            :bedroom_min    => 1,
            :bathroom_min   => 1
        }
        merge_options(options, defaults)
        setup_vars
      end

    end

  end


end