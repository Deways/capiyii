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


## What's next? ##

Read the [capiyii documentation](http://deways.github.com/capiyii)


## Contributors ##

* Mlanawo Mbechezi (owner): [http://github.com/Shine-neko](http://github.com/Shine-neko)


## License ##

Capifony is released under the MIT License. See the bundled LICENSE file for details.
