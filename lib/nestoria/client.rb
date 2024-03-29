require "nestoria/enum"
require "nestoria/parameter/filter"
require "nestoria/parameter/location"
require "nestoria/parameter/record"
require "nestoria/helper/url"
require "nestoria/helper/http"
require "nestoria/exception"
require 'cgi'
require 'net/http'
require 'uri'
require 'json'
require 'oj'


module Nestoria

  class Client

      include Nestoria::UrlHelper
      include Nestoria::HttpHelper

      def initialize(location_params)
        @location_params  = location_params
      end


      def listings(filter_params, record_params = nil)
        @required_params = {:action => :search_listings, :encoding => :json}
        @filter_params = filter_params
        @record_params = (record_params.nil?) ? Nestoria::Parameter::RecordParameter.new : record_params
        data = get_api_json_data(http_queriesstring)
        process_listing data
      end

      def http_queriesstring
        http_querystring = querystring(@required_params)
        http_querystring = querystring(@location_params.options, http_querystring)
        http_querystring = querystring(@filter_params.options, http_querystring) unless @filter_params.nil?
        http_querystring = querystring(@record_params.options, http_querystring) unless @record_params.nil?
      end





      def process_listing(data)
        #p reply_status = data['response']['application_response_code']
        listings = data['response']['listings'][0]
      end

  end

end