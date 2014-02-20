# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shared4/version'

Gem::Specification.new do |spec|
  spec.name          = "shared4"
  spec.version       = Shared4::VERSION
  spec.authors       = ["Sanjiv Jha"]
  spec.email         = ["narutosanjiv@gmail.com"]
  spec.summary       = %q{4shared file sharing api}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

end
