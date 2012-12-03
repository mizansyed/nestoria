require_relative '../../test_helper'


class ParamTest < MiniTest::Unit::TestCase

  describe Nestoria::Parameter::RecordParameter do

    it "raises exception if option is not a Hash"  do
      proc { Nestoria::Parameter::RecordParameter.new(Array.new)}.must_raise TypeError
    end

    it "raises exception if option has empty value"  do
      proc { Nestoria::Parameter::RecordParameter.new({listing_type: ''})}.must_raise Nestoria::InsufficientArgumentsError
    end

    describe Nestoria::Parameter::RecordParameter.new do
      before do
        @record_param = Nestoria::Parameter::RecordParameter.new({})
      end

      it "has default attribute values" do
        @record_param.number_of_results.must_equal 20
      end
    end

  end

end