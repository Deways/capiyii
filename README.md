Deploying Yii Framework Applications with Capistrano
==============================================

Capistrano is an open source tool for running scripts on multiple servers.
Its primary use is for easily deploying applications. While it was built
specifically for deploying Rails apps, it’s pretty simple to customize it
to deploy other types of applications. We’ve been working on creating a
deployment “recipe” to work with yii applications to make our job a
lot easier.


## Prerequisites ##

- Yii 1.1+
- Must have SSH access to the server you are deploying to.
- Must have Ruby and RubyGems installed on your machine (not required
  for deployment server)


## Installing Capifony ##

### Through RubyGems.org ###

	sudo gem install capiyii

### Through GitHub ###

	git clone git://github.com/deways/capiyii.git
	cd capiyii
	gem build capiyii.gemspec
	sudo gem install capiyii-{version}.gem


## Contributing to capiyii ##

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.

## What's next? ##

Read the [capiyii documentation](http://deways.github.com/capiyii)


## Contributors ##

* Mlanawo Mbechezi (owner): [http://github.com/Shine-neko](http://github.com/Shine-neko)


## License ##

Capiyii is released under the MIT License. See the bundled LICENSE file for details.
