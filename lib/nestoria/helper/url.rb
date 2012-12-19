module Nestoria

  module UrlHelper

    def api_url
          {   au: "api.nestoria.com.au",
              br: "api.nestoria.com.br",
              de: "api.nestoria.de",
              es: "api.nestoria.es",
              fr: "api.nestoria.fr",
              in: "api.nestoria.in",
              it: "api.nestoria.it",
              uk: "api.nestoria.co.uk" }
    end

    def querystring(params={}, concat_string='')
      querystring = params.map { |k, v| "#{CGI.escape(k.to_s)}=#{CGI.escape(v.to_s)}" }.join("&")
      querystring = "#{concat_string}&#{querystring}" unless concat_string.empty?
      querystring
    end


  end

end