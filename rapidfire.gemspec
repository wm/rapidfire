$:.push File.expand_path('../lib', __FILE__)

require 'rapidfire/version'

Gem::Specification.new do |s|
  s.name        = 'rapidfire'
  s.version     = Rapidfire::VERSION
  s.authors     = ['Yuva Kumar']
  s.email       = ['yuva@codemancers.com']
  s.homepage    = 'https://github.com/code-mancers/rapidfire'
  s.summary     = 'Surveys made easy.'
  s.description = 'One stop solution for all survey related requirements! Its tad easy!.'
  s.licenses    = ['MIT']

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.post_install_message = <<-PIM
There is breaking delimiter change when upgrading to version 2.0.0.
Please see Readme for more information.
PIM

  s.add_dependency 'rails', '>= 3.2.13'
  s.add_dependency 'active_model_serializers', '~> 0.9.3'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails', '~> 3.6.1'
  s.add_development_dependency 'shoulda'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'minitest'
end
