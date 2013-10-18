# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rsqrl/version'

Gem::Specification.new do |spec|
  spec.name          = "rsqrl"
  spec.version       = Rsqrl::Version::STRING
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Robert Schmitt"]
  spec.email         = ["bob@conceptyard.com"]
  spec.description   = "A comprehensive, easy-to-use, high security replacement for usernames, passwords, reminders, one-time-code authenticators and everything else."
  spec.summary       = "rsqrl-#{Rsqrl::Version::STRING}"
  spec.homepage      = "https://github.com/ConceptYard/rsqrl"
  spec.license       = "MIT"

  spec.rubyforge_project = "rsqrl"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
