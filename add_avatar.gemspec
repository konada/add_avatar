$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'add_avatar/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'add_avatar'
  s.version     = AddAvatar::VERSION
  s.authors     = ['konada']
  s.email       = ['konrad.cisak@gmail.com']
  s.homepage    = 'https://github.com/konada/add_avatar'
  s.summary     = 'Add avatar to model associations'
  s.description = 'This gem will add avatar association to chosen models in rails app'
  s.license     = 'MIT'

  s.files = Dir['{app,db,lib,app}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.require_path = ['lib', 'app']
  s.required_ruby_version     = '>= 2.3.3'

  s.add_dependency('rails', '~> 5.0.1')
  s.add_dependency('paperclip', '~> 5.0.0')

  s.add_development_dependency('bundler')
  s.add_development_dependency('pg')
  s.add_development_dependency('pry')
  s.add_development_dependency('rake')
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency('sqlite3')
end
