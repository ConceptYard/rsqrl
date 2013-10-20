PROJECT_ROOT = File.expand_path(File.dirname(__FILE__) + '/..')

require "base64"

$LOAD_PATH.unshift(File.dirname(__FILE__))

require_relative 'rsqrl/version'
require_relative 'rsqrl/sqrl/password_parameters'
require_relative 'rsqrl/sqrl/authentication/signature'

$LOAD_PATH.shift

module Rsqrl
end
