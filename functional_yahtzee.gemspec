# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yahtzee'

Gem::Specification.new do |spec|
  spec.name          = "functional-yahtzee"
  spec.version       = Yahtzee::VERSION
  spec.authors       = ["Jim OKelly"]
  spec.email         = ["jim@onlinedevschool.com"]
  spec.description   = %q{Functional yahtzee}
  spec.summary       = %q{Yahztee in functional ruby}
  spec.homepage      = "http://github.com/onlinedevschool/functional_yahtzee"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",        "~> 1.3"
  spec.add_development_dependency "rake",           "~> 10.1"
  spec.add_development_dependency "guard-minitest", "~> 2.0"
  spec.add_development_dependency "coveralls",      "~> 0.7"
end
