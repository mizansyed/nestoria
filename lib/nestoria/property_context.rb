require "nestoria/enum"

module Nestoria

    class PropertyContext
      @bathroom_min,
      @bedroom_min,
      @country,
      @language,
      @listing_type,
      @location,
      @num_results,
      @offset,
      @output,
      @page,
      @property_type,
      @radius,
      @sort,
      @application_response_code,
      @application_response_text,
      @attribution_img_height,
      @attribution_img_ur,
      @img_width,
      @link_to_img,
      @created_http,
      @created_unix,
      @link_to_url,
      @properties = {}


      def set_context_variables (list_options)
        list_options.each do|k,v|
          instance_variable_set(:"@#{k}", v)
        end

        @property_type = set_data_as_enum(self.property_type, Nestoria::Constants::PropertyType)
        @listing_type = set_data_as_enum(self.listing_type, Nestoria::Constants::ListingType)
      end
    end
end