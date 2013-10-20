require 'simplecov'

SimpleCov.start do
    add_filter "/support/"
end

require 'rspec/autorun'

lib_dir = File.expand_path(File.dirname(__FILE__) + '/../lib')
Dir[File.join(lib_dir, '**/*.rb')].each { |f| require f }

support_dir = File.expand_path(File.dirname(__FILE__) + '/support')
Dir[File.join(support_dir, '**/*.rb')].each { |f| require f }
require "rsqrl"

RSpec.configure do |config|
  config.mock_with :rspec
end
