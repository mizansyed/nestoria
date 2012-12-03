require_relative '../../test_helper'

class ParamTest < MiniTest::Unit::TestCase

  describe Nestoria::Parameter::LocationParameter do

    it "raises exception if option is not a Hash"  do
      proc { Nestoria::Parameter::LocationParameter.new(Array.new)}.must_raise TypeError
    end

    it "raises exception if option has empty value"  do
    proc { Nestoria::Parameter::LocationParameter.new({place_name: ''}) }.must_raise Nestoria::InsufficientArgumentsError
    end

    
    describe Nestoria::Parameter::LocationParameter.new do
      before do
        @location_param = Nestoria::Parameter::LocationParameter.new({place_name: 'camden'})
      end

      it "has default attribute values" do
        @location_param.country.must_equal :uk
        @location_param.radius.must_equal "2km"
      end
    end

  end

end
