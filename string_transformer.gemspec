# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'string_transformer/version'

Gem::Specification.new do |spec|
  spec.name          = "string_transformer"
  spec.version       = StringTransformer::VERSION
  spec.authors       = ["Henry Paulino"]
  spec.email         = ["henrypl360@gmail.com"]

  spec.summary       = %q{Simple string encrypter and decrypter}
  spec.homepage      = "https://github.com/corasan/string_transformer"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
