# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uglifier_with_source_maps/version'

Gem::Specification.new do |spec|
  spec.name          = "uglifier_with_source_maps"
  spec.version       = UglifierWithSourceMaps::VERSION
  spec.authors       = ["Leif Ringstad"]
  spec.email         = ["leifcr@gmail.com"]
  spec.summary       = %q{Create js sourcemaps on your Rails 3.2 applications}
  spec.description   = %q{UglifierWithSourceMaps overrides parts of sprockets to create sourcemaps using uglifier for your javascript assets. It is meant to be used in production.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "sprockets", "~> 2.2.2"
  spec.add_runtime_dependency "actionpack", "~> 3.2.19"
  spec.add_runtime_dependency "uglifier", ">= 2.5.0"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
