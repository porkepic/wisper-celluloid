# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wisper/celluloid/version'

Gem::Specification.new do |spec|
  spec.name          = "wisper-celluloid"
  spec.version       = Wisper::Celluloid::VERSION
  spec.authors       = ["Kris Leech"]
  spec.email         = ["kris.leech@gmail.com"]
  spec.summary       = "Wisper async publishing using Celluloid"
  spec.description   = "Wisper async publishing using Celluloid"
  spec.homepage      = "https://github.com/krisleech/wisper-celluloid"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_dependency 'wisper', "2.0.0.rc1"
  spec.add_dependency 'celluloid', "0.17.2"
end
