# Spree Advertisement Spaces 

Extension for spree which allows the admin to add different sized self advertisement spaces in the homepage, sidebar and taxon page.

## Installation 


Add spree_advertisement_spaces to your Gemfile:

```ruby
gem 'spree_advertisement_spaces', github: 'Claan/spree_advertisement_spaces', branch: 'master'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_advertisement_spaces:install
```

## Contributing

In the spirit of [free software][2], **everyone** is encouraged to help improve this project.

Here are some ways *you* can contribute:

* by using prerelease versions
* by reporting [bugs][3]
* by suggesting new features
* by writing translations
* by writing or editing documentation
* by writing specifications
* by writing code (*no patch is too small*: fix typos, add comments, clean up inconsistent whitespace)
* by refactoring code
* by resolving [issues][3]
* by reviewing patches

Starting point:

* Fork the repo
* Clone your repo
* Run `bundle install`
* Run `bundle exec rake test_app` to create the test application in `spec/test_app`
* Make your changes
* Ensure specs pass by running `bundle exec rspec spec`
* Submit your pull request

Copyright (c) 2014 [Nuno Polonia][5], released under the [MIT License][5]

[1]: https://github.com/Claan/spree_advertisement_spaces/blob/master/Versionfile
[2]: http://www.fsf.org/licensing/essays/free-sw.html
[3]: https://github.com/Claan/spree_advertisement_spaces/issues
[4]: https://github.com/nunopolonia
[5]: https://github.com/Claan/spree_advertisement_spaces/blob/master/LICENSE.md
