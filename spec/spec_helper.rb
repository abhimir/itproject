require 'rubygems'
require 'spork'
ENV["RAILS_ENV"] ||= 'test'

Spork.prefork do
  require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
  require 'rspec/rails'
  require 'factory_girl'
  require "steak"
  require 'capybara/rails'
  require 'fakeweb'
 
  RSpec.configure do |config|
    config.mock_with :rspec
    config.include Capybara
  end

#  include FakeJsonHelper
  FakeWeb.allow_net_connect = false

  Factory.definition_file_paths = [
          File.join(Rails.root, 'spec', 'factories')
  ]

  Factory.find_definitions
end

Spork.each_run do
  # This code will be run each time you run your specs.
  Dir[File.expand_path(File.dirname(__FILE__) + "/../app/*/*.rb")].each {|file| load file }
  
  require 'simplecov'
  SimpleCov.start "rails"
end
