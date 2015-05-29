#jsTree for rails asset pipeline

[jsTree](https://github.com/vakata/jstree) is jquery plugin, that provides interactive trees. It is absolutely free, open source and distributed under the MIT license.

The `jstree-rails-4` gem integrates the `jsTree` jQuery plugin with the Rails asset pipeline.

GemVersion: 3.1.1

jsTree Version: 3.1.1

## Usage

### Install jstree-rails-4 gem

Add `jstree-rails-4` to your Gemfile and run `bundle install`:

  `gem "jstree-rails-4"`

### Include jstree-rails-4 javascript assets

Add the following to your `app/assets/javascripts/application.js`:

  `//= require jstree`

### Include jstree-rails-4 stylesheet assets

Add to your `app/assets/stylesheets/application.css`:

  `*= require jstree-default`  <--- TO USE DEFAULT THEME

  `*= require jstree-default-dark`  <--- TO USE DEFAULT DARK THEME

### Precompile additional assets

Add the images to your `config/initializers/assets.rb`:

  `Rails.application.config.assets.precompile += %w( *.png *.gif )`

## Contributions

If you want to contribute, please:

  * Fork the project.
  * Make your feature addition or bug fix.
  * Send me a pull request on Github.

## License

jsTree-Rails-4 is released under the [MIT License](http://www.opensource.org/licenses/MIT).
