# encoding: UTF-8
Gem::Specification.new do |s|
  s.name          = 'spree_bootstrap'
  s.version       = '0.0.1'
  s.platform      = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.8.7'

  s.author        = 'Mikhail Mikhaliov'
  s.email         = 'legiar@gmail.com'
  s.homepage      = 'https://github.com/legiar/spree_bootstrap'
  s.summary       = 'Twitter Bootstrap integration for Spree'
  s.description   = 'Twitter Bootstrap integration for Spree e-commerce solution'
  s.license       = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path  = 'lib'
  s.requirements  << 'none'

  s.add_dependency 'spree_core',          '~> 1.3.0'
  s.add_dependency 'sass-rails',          '~> 3.2'
  s.add_dependency 'bootstrap-sass',      '~> 2.3.0.0'
  s.add_dependency 'modernizr'
  s.add_dependency 'jquery-rails',        '~> 2.2.1'
  s.add_dependency 'jquery-rails-cdn'

  s.add_development_dependency 'capybara', '~> 1.1.2'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'sqlite3'
end
