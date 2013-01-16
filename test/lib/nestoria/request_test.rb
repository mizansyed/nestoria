require_relative '../../test_helper'
require_relative '../../../lib/nestoria/helper/url'

class RequestTest < MiniTest::Unit::TestCase



  describe "API Url Helper"  do

    @request = Object.new.extend(Nestoria::UrlHelper)

    api_url = @request.api_url
    it "must get hash"  do
      api_url.must_be_kind_of Hash
    end

    it "must provide an API url for a given country key" do
      api_url[:uk].must_equal "api.nestoria.co.uk"
    end

  end


  #describe VCR do
  #
  #  VCR.use_cassette('API Url') do
  #    response = Net::HTTP.get_response(URI('http://www.iana.org/domains/example/'))
  #    response.body
  #  end
  #end
end