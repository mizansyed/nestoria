require_relative '../../test_helper'


class ClientTest < MiniTest::Unit::TestCase

  describe Nestoria::Client do

    describe Nestoria::Client do
      before do
        @location_param = Nestoria::Parameter::LocationParameter.new({place_name: 'camden'})
        @client = Nestoria.client(@location_param)
      end

      it "should provide a listing to all buyable properties in camden"  do
        @listing_type = Nestoria::Constants::ListingType::RENT
        @property_type = Nestoria::Constants::PropertyType::ALL
        @filter_param = Nestoria::Parameter::FilterParameter.new({listing_type: @listing_type, property_type: @property_type})
        @client.listings(@filter_param)
      end

    end

  end

end