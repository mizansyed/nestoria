module Nestoria

  module HttpHelper

    def get_api_json_data(querystring)
      au = api_url[@location_params.country]
      uri = URI.parse("http://#{au}/api?#{querystring}")

      response = Net::HTTP.get_response(uri)
      data = response.body  if response.is_a?(Net::HTTPSuccess)
      raise Nestoria::NoAPIDataError "No data received or no response from request to Nestoria" if data.nil?
      Oj.load(data)

    end
  end

end