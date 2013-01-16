module Nestoria

  module EnumHelper

    private

    def set_data_as_enum(instance_to_convert, constant_type)
      if instance_to_convert != nil
        constant_type.constants.find do | ctype |
          type = constant_type.const_get(ctype)
          return ctype if type == instance_to_convert.upcase;
        end
      end
      instance_to_convert
    end

  end

end