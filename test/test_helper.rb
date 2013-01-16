require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/mock'
require 'webmock/minitest'
require 'vcr'
require_relative '../lib/nestoria'
require_relative '../lib/nestoria/parameter/location'
require_relative '../lib/nestoria/parameter/filter'
require_relative '../lib/nestoria/parameter/record'
require_relative '../lib/nestoria/enum'
require_relative '../lib/nestoria/property'
require_relative '../lib/nestoria/property_context'


VCR.configure do |c|
  c.cassette_library_dir = 'test/fixtures/nestoria'
  c.hook_into :webmock
  c.allow_http_connections_when_no_cassette = true
end

#require_relative '../lib/nestoria/exception'
#require_relative '../lib/nestoria/parameter/location_parameter'



