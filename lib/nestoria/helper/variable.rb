module Nestoria

  module VariableHelper

    def setup_vars
      @options.each do|k,v|
        instance_variable_set(:"@#{k}", v)
      end
    end

    def options
      vars = self.instance_variables
      vars.select! {|k| k.to_s != "@options"}
      opts = {}
      vars.each do |var|
        v = var.to_s.delete("@")
        unless self.instance_variable_get("@#{v}").nil?
          opts[v] = self.instance_variable_get("@#{v}")
        end
      end
      opts
    end

  end

end