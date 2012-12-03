# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nestoria/version'

Gem::Specification.new do |gem|
  gem.name          = "nestoria"
  gem.version       = Nestoria::VERSION
  gem.authors       = ["Mizan Syed"]
  gem.email         = ["mizansyed@gmail.com"]
  gem.description   = %q{An API client for Netstoria}
  gem.summary       = %q{An API client for Netstoria using the official API representation}
  gem.homepage      = "https://github.com/mizansyed/nestoria"

  gem.add_dependency 'json'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
