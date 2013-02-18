Gem::Specification.new do |s|
  s.name = 'capiyii'
  s.version = "0.0.4.dev"
  s.platform = Gem::Platform::RUBY

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Deways"]
  s.date = '2012-10-03'
  s.default_executable = 'capiyii'
  s.description = <<-DESC
    Yii deployment with capistrano, useful tasks, rollback deployment and more
  DESC
  s.summary = <<-DESC.strip.gsub(/\n\s+/, " ")
    Deploying Yii framework applications with Capistrano.
  DESC
  s.email = 'nawo@deways.com'
  s.executables << "capiyii"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "bin/capiyii",
    "lib/capiyii.rb",
    "test/helper.rb",
    "test/test_capiyii.rb",
    "capiyii.gemspec"
  ]
  s.homepage = 'http://github.com/deways/capiyii'
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.test_files = [
    "test/helper.rb",
    "test/test_capiyii.rb"
  ]

  s.add_runtime_dependency(%q<capistrano>, [">= 2.11.0"])
  s.add_runtime_dependency(%q<capistrano-ext>, [">= 1.2.1"])
  s.add_development_dependency(%q<shoulda>, [">= 0"])
  s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
  s.add_development_dependency(%q<jeweler>, ["~> 1.8.2"])
  s.add_development_dependency(%q<capistrano>, [">= 2.11.0"])
  s.add_development_dependency(%q<capistrano-ext>, [">= 1.2.1"])
end

