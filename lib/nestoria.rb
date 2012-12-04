require "nestoria/version"
require "nestoria/parameter/location"
require "nestoria/parameter/filter"
require "nestoria/parameter/record"
require "nestoria/client"

module Nestoria

   class << self

     def client(location_params)
         @client = Nestoria::Client.new(location_params)
     end

   end

end

