Gem::Specification.new do |spec|
  spec.name = 'capiyii'
  spec.version = "0.0.4.dev"
  spec.platform = Gem::Platform::RUBY

  spec.required_rubygems_version = Gem::Requirement.new(">= 0") if spec.respond_to? :required_rubygems_version=
  spec.authors = ["Mlanawo Mbechezi", "Deways"]
  spec.date = '2012-10-03'
  spec.default_executable = 'capiyii'
  spec.description = <<-DESC
    Yii deployment with capistrano, useful tasks, rollback deployment and more
  DESC
  spec.summary = <<-DESC.strip.gsub(/\n\s+/, " ")
    Deploying Yii framework applications with Capistrano.
  DESC
  spec.email = 'nawo@deways.com'
  spec.executables << "capiyii"
  spec.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  spec.files = [
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
  spec.homepage = 'http://github.com/deways/capiyii'
  spec.licenses = ["MIT"]
  spec.require_paths = ["lib"]
  spec.test_files = [
    "test/helper.rb",
    "test/test_capiyii.rb"
  ]

  spec.add_dependency 'capistrano', ">= 2.13.5","< 2.16.0"
  spec.add_dependency 'capistrano-ext', ">= 1.2.1"
  spec.add_dependency 'shoulda', ">= 0"
  spec.add_dependency 'colored', ">= 1.2.0"
  spec.add_dependency 'capistrano-maintenance', '0.0.3'
  spec.add_dependency 'ruby-progressbar', '1.0.2'

end

