require 'simplecov'

if ENV["COV"]
  SimpleCov.start do
    add_filter "/spec/"
  end
end

require 'rspec/autorun'

support_dir = File.expand_path(File.dirname(__FILE__) + '/support')
Dir[File.join(support_dir, '**/*.rb')].each { |f| require f }
require 'rsqrl'

RSpec.configure do |config|
  config.mock_with :rspec
end
