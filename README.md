# rsqrl

Ruby implementation of Secure QR Login algorithm

Proposing a comprehensive, easy-to-use, high security replacement for usernames, passwords, reminders, one-time-code authenticators, and everything else.

See [The SQRL Page](https://www.grc.com/sqrl/sqrl.htm) for a detailed explaination of the concept and algorithms to implement the SQRL system.

## Installation

Rsqrl uses [RbNaCl](https://github.com/cryptosphere/rbnacl), the Ruby Cryptography Library. RbNaCl is a Ruby wrapper for a cryptography library written in C, [libsodium](https://github.com/jedisct1/libsodium). Libsodium needs to be installed on your development and server systems.

For OS X users, libsodium is available via homebrew and can be installed with:

    brew install libsodium

To add rsqrl to your project, add this line to your application's Gemfile:

    gem 'rsqrl'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rsqrl

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
