# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_msrp'
  s.version     = '2.1.7'
  s.summary     = 'Add MSRP to Spree products'
  s.description = 'Add MSRP to Spree products'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Colin Mattson'
  s.email     = 'colinmattson@gmail.com'
  s.homepage  = 'https://www.github.com/cmattson/spree_msrp'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.1.7'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails', '~> 4.0.2'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pry'
end
