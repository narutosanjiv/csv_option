# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'csv_option/version'

Gem::Specification.new do |spec|
  spec.name          = "csv_option"
  spec.version       = CsvOption::VERSION
  spec.authors       = ["Sanjiv Jha"]
  spec.email         = ["sanjiv@joshsoftwaree.com"]
  spec.summary       = %q{Ruby gem for determing CSV options.}
  spec.description   = %q{Ruby gem for determing CSV options.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
