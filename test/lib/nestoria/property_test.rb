require_relative '../../test_helper'


class PropertyTest < MiniTest::Unit::TestCase

  describe Nestoria::Property do

      before do
        @property = Nestoria::Property.new

      end

      it "must return everything as nil" do
        @property.instance_variables.each do |v|
             v.must_be_nil
        end
      end

      it "must return same data as supplied as options"  do
        options = {

            bathroom_number: 2,
            bedroom_number: 4,
            lister_name: "Joe Blogg Agency",
            lister_url:  "http://www.example.com/joeb",
            price: 199000,
            summary: "You should really buy this place",
            title: "4 Beds with 2 bathrooms"
        }

        @property.set_property_variables(options)

        options.each do  |k, v|
          @property.instance_variable_get("@#{k}").must_equal(v)
        end

      end

      it "must return enummed constants from supplied options"  do
        options = {

            property_type: "house",
            listing_type: "buy"
        }

        @property.set_property_variables(options)
        @property.property_type.must_equal(Nestoria::Constants::PropertyType::HOUSE.to_sym)
        @property.listing_type.must_equal(Nestoria::Constants::ListingType::BUY.to_sym)
      end

  end

end