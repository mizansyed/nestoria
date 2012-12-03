require_relative '../../test_helper'

class ParamTest < MiniTest::Unit::TestCase

  describe Nestoria::Parameter::FilterParameter do

    it "raises exception if option is not a Hash"  do
      proc { Nestoria::Parameter::FilterParameter.new(Array.new)}.must_raise TypeError
    end

    it "raises exception if option has empty value"  do
      proc { Nestoria::Parameter::FilterParameter.new({listing_type: ''})}.must_raise Nestoria::InsufficientArgumentsError
    end

    describe Nestoria::Parameter::FilterParameter.new do
      before do
        @listing_type = Nestoria::Constants::ListingType::BUY
        @property_type = Nestoria::Constants::PropertyType::ALL
        @filter_param = Nestoria::Parameter::FilterParameter.new({listing_type: @listing_type})
      end

      it "has default attribute values" do
        @filter_param.property_type.must_equal @property_type
        @filter_param.bathroom_min.must_equal 1
      end
    end

  end

end