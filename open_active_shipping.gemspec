# -*- encoding: utf-8 -*-

# Maintain your gem's version:
require 'open_active_shipping/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY

  s.name        = 'open_active_shipping'
  s.version     = OpenActiveShipping::VERSION
  s.authors     = 'China Guide Tech Team'
  s.email       = '99cm at china-guide'
  
  s.summary     = 'Open extension for active shipping that bundles up various carriers.'
  s.description = 'Get rates and tracking info from various shipping carriers for Open Store.'
  
  s.required_ruby_version = '>= 2.5.3'
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency 'open_core', open_version

  s.add_dependency("measured", ">= 2.0")
  s.add_dependency("activesupport", ">= 5.2", "< 6.1")
  s.add_dependency("active_utils", "~> 3.3.16")
  s.add_dependency("nokogiri", ">= 1.6")

  s.add_development_dependency 'webmock'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rspec-activemodel-mocks'
  s.add_development_dependency 'vcr'
end