# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dayplan/version'

Gem::Specification.new do |spec|
  spec.name          = "dayplan"
  spec.version       = Dayplan::VERSION
  spec.authors       = ["Nathan L. Walls"]
  spec.email         = ["nathan@wallscorp.us"]
  spec.description   = %q{ Pending }
  spec.summary       = %q{ Pending }
  spec.homepage      = "https://github.com/base10/dayplan"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
