require_relative '../../test_helper'

class ConstantTest < MiniTest::Unit::TestCase

  describe Nestoria::Constants do

    describe Nestoria::Constants::ListingType do
      it "raises exception if the enum has no predefined value"  do
        proc { Nestoria::Constants::ListingType::FOO}.must_raise NameError
      end
    end

    describe Nestoria::Constants::PropertyType do
      it "raises exception if the enum has no predefined value"  do
        proc { Nestoria::Constants::PropertyType::FOO}.must_raise NameError
      end
    end

    describe Nestoria::Constants::SortBy do
      it "raises exception if the enum has no predefined value"  do
        proc { Nestoria::Constants::SortBy::FOO}.must_raise NameError
      end
    end

  end

end