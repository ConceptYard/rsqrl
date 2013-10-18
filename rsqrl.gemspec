# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rsqrl/version'

Gem::Specification.new do |spec|
  spec.name          = "rsqrl"
  spec.version       = Rsqrl::VERSION
  spec.authors       = ["Robert Schmitt"]
  spec.email         = ["bob@conceptyard.com"]
  spec.description   = %q{The website's login presents a QR code containing the URL of its authentication service, plus a nonce. The user's smartphone signs the login URL using a private key derived from its master secret and the URL's domain name. The Smartphone sends the matching public key to identify the user, and the signature to authenticate it.}
  spec.summary       = %q{A comprehensive, easy-to-use, high security replacement for usernames, passwords, reminders, one-time-code authenticators and everything else.}
  spec.homepage      = "https://github.com/ConceptYard/rsqrl"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
