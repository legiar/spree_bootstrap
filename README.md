SpreeBootstrap
==============

Bootstrap theme to be applied to base Spree install. It's intended as a starting point to redesign a barebones Spree install with extensive and powerful features of Twitter Bootstrap framework.

Installation
============

Themes in Spree are typically implemented as [Spree extensions](http://guides.spreecommerce.com/extensions.html). To use the theme you will need an existing Spree application running Spree version 1.3 or higher. If you are unsure of how to do this you can find instructions on how to create a simple Spree application in the [Spree README](https://github.com/spree/spree).

Once you have a rails application running Spree, it's a simple three step process to install the spree_bootstrap extension.  First, add the gem to your `Gemfile`:

```
gem 'spree_bootstrap', :git => 'git://github.com/legiar/spree_bootstrap.git'
```

Then install the gem via Bundler:

```
$ bundle install
```

Finally, you need to set up asset pipeline require statements for `spree_boostrap`:

```
$ bundle exec rails g spree_boostrap:install
```

Example
=======

TODO: 

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2013 [Mikhail Mikhaliov](mailto:legiar@gmail.com), released under the MIT License
