# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geo_contrast/version'

Gem::Specification.new do |spec|
  spec.name          = "geo_contrast"
  spec.version       = GeoContrast::VERSION
  spec.authors       = ["CODELAND"]
  spec.email         = ["contato@codeland.com.br"]
  spec.summary       = %q{This summary sucks and should be fixed}
  spec.description   = %q{This description sucks and should be fixed}
  spec.homepage      = "https://github.com/codelandev/geocontrast"
  spec.license       = "MIT"

  spec.files         = Dir["{lib,vendor}/**/*"] + ["MIT-LICENSE", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "jquery-rails"
end
