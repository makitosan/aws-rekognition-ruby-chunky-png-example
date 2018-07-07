# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors = ["Aki"]
  gem.email = ["makitosansan@gmail.com"]
  gem.summary = "example for aws sdk rekognition ruby, w/o rmagick"
  gem.description = ""
  gem.homepage = ""
  gem.license = "MIT"

  # gem.executables = ['']

  gem.files = %w[Gemfile .gemspec]
  gem.files += Dir.glob("bin/**/*")
  gem.files += Dir.glob("config/*")
  gem.files += Dir.glob("fonts/**/*")
  gem.files += Dir.glob("lib/**/*.rb")
  gem.files += Dir.glob("migrations/**/*")
  gem.files += Dir.glob("test/**/*")

  gem.test_files = []
  gem.name = "aws-rekognition-ruby-chunky-png-example"
  gem.require_paths = ["lib"]
  gem.version = "1.0.0"
  gem.required_ruby_version = ">= 2.2.2"

  gem.add_dependency 'aws-sdk-s3', '>= 1.14.0'
  gem.add_dependency 'aws-sdk-rekognition', '>= 1.5.0'
  gem.add_dependency 'chunky_png', '= 1.3.10'
  gem.add_dependency 'activesupport', '>= 5.2.0', '<6'
end

