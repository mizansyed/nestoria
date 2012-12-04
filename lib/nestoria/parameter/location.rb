require "nestoria/parameter/base"

module Nestoria

  module Parameter

    class LocationParameter < Nestoria::Parameter::Base

      include VariableHelper
      attr_reader :country, :place_name, :south_west, :north_east, :centre_point, :radius

      def initialize(options={})
        raise(TypeError, "Argument is expected to be a Hash") unless options
        check_valid(options)
        defaults = {
            :country   => :uk,
            :radius    => "2km"
        }
        merge_options(options, defaults)
        setup_vars
      end

    end

  end

end

