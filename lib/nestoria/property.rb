require "nestoria/enum"
require "nestoria/helper/enum"

module Nestoria

  class Property

    include EnumHelper

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

    def set_property_variables (list_options)
      list_options.each do|k,v|
        instance_variable_set(:"@#{k}", v)
      end

      @property_type = set_data_as_enum(self.property_type, Nestoria::Constants::PropertyType)
      @listing_type = set_data_as_enum(self.listing_type, Nestoria::Constants::ListingType)
    end



  end

end
