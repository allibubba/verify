# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'verify/version'

Gem::Specification.new do |spec|
  spec.name          = "verify"
  spec.version       = Verify::VERSION
  spec.authors       = ["Jackson Oates"]
  spec.email         = ["jackson.oates@gmail.com"]
  spec.description   = %q{Provide a clean interface for working with background service}
  spec.summary       = %q{interface with background service}
  spec.homepage      = "https://github.com/allibubba/verify"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'engtagger'
  spec.add_dependency 'activerecord', '>= 4.0', '< 5.1'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
