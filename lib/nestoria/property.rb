require "nestoria/enum"

module Nestoria

  class Property

    attr_reader    :auction_date,
                   :bathroom_number,
                   :bedroom_number,
                   :car_spaces,
                   :commission,
                   :construction_year,
                   :datasource_name,
                   :guid,
                   :img_height,
                   :img_url,
                   :img_width,
                   :keywords,
                   :latitude,
                   :lister_name,
                   :lister_url,
                   :listing_type,
                   :location_accuracy,
                   :longitude,
                   :price,
                   :price_coldrent,
                   :price_formatted,
                   :price_high,
                   :price_low,
                   :price_type,
                   :property_type,
                   :summary,
                   :thumb_height,
                   :thumb_url,
                   :thumb_width,
                   :title,
                   :updated_in_days,
                   :updated_in_days_formatted

    def initialize

    end

    def set_property_instance (list_options)
      list_options.each do|k,v|
        instance_variable_set(:"@#{k}", v)
      end

      @property_type = set_data_as_enum @property_type, Nestoria::Constants::PropertyType
      @listing_type = set_data_as_enum @listing_type, Nestoria::Constants::ListingType
    end

    private

    def set_data_as_enum(instance_to_convert, constant_type)
      converted_const = instance_to_convert
      if instance_to_convert != nil
        property = instance_to_convert.upcase;
        constant_type.constants.find do | c |
          type = constant_type.const_get(c)
          converted_const = c if type == property
        end
      end

    end

  end

end
