# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mpluck/version'

Gem::Specification.new do |spec|
  spec.name          = "mpluck"
  spec.version       = Mpluck::VERSION
  spec.authors       = ["Michael Nomitch"]
  spec.email         = ["mnomitch@instructure.com"]
  spec.summary       = %q{multipluck helper for Rails 2 and 3}
  spec.description   = %q{multipluck helper for Rails 2 and 3}
  spec.homepage      = "https://github.com/mikenomitch/mpluck"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "activerecord", ['>= 2.0', '< 4.0']
end
