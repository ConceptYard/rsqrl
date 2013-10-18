require 'simplecov'
if ENV["COV"]
  SimpleCov.start do
    add_filter "/spec/"
    add_filter "/vendor/"
    add_filter "/config\/initializers/"
  end
end

require 'rspec/autorun'

support_dir = File.expand_path(File.dirname(__FILE__) + '/support')
Dir[File.join(support_dir, '**/*.rb')].each { |f| require f }
require 'rsqrl'

RSpec.configure do |config|
end
