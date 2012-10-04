require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "capiyii"
  gem.homepage = "http://github.com/deways/capiyii"
  gem.license = "MIT"
  gem.summary = %Q{Yii deployment with capistrano}
  gem.description = %Q{Yii deployment with capistrano, useful tasks, rollback deployment and more}
  gem.email = "nawo@deways.com"
  gem.authors = ["Mlanawo Mbechezi"]
  gem.executables = ['capiyii']
  gem.files.include "lib/capiyii.rb"
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  gem.add_runtime_dependency 'capistrano', '>= 2.11.0'
  gem.add_runtime_dependency 'capistrano-ext', '>= 1.2.1'
  gem.add_development_dependency 'capistrano', '>= 2.11.0'
  gem.add_development_dependency 'capistrano-ext', '>= 1.2.1'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rake/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "capiyii #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
