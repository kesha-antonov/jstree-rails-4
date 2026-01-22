<p align="center">
  <a href="https://rubygems.org/gems/jstree-rails-4"><img src="https://img.shields.io/gem/v/jstree-rails-4.svg" alt="Gem Version"></a>
  <a href="https://rubygems.org/gems/jstree-rails-4"><img src="https://img.shields.io/gem/dt/jstree-rails-4.svg" alt="Total Downloads"></a>
  <a href="https://github.com/kesha-antonov/jstree-rails-4/blob/master/LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License"></a>
</p>

<h1 align="center">jsTree for Rails Asset Pipeline</h1>

<p align="center">
  Integrate the <a href="https://github.com/vakata/jstree">jsTree</a> jQuery plugin with the Rails asset pipeline.
</p>

---

[jsTree](https://github.com/vakata/jstree) is a jQuery plugin that provides interactive trees. It is absolutely free, open source and distributed under the MIT license.

| | Version |
|-------------|---------|
| Gem | 3.3.17 |
| jsTree | 3.3.17 |

## 📦 Usage

### Install jstree-rails-4 gem

Add `jstree-rails-4` to your Gemfile and run `bundle install`:

```ruby
gem "jstree-rails-4"
```

### Include jstree-rails-4 javascript assets

Add the following to your `app/assets/javascripts/application.js`:

```javascript
//= require jstree
```

### Include jstree-rails-4 stylesheet assets

Add to your `app/assets/stylesheets/application.css`:

```css
*= require jstree-default
```

or for dark theme:

```css
*= require jstree-default-dark
```

## 🤝 Contributions

If you want to contribute, please:

1. Fork the project
2. Make your feature addition or bug fix
3. Send me a pull request on Github

## 🔄 How to pull new version of jsTree yourself

Use command line:

```bash
bundle install
ruby -r './lib/jstree-rails-4/source_file.rb' -e 'SourceFile.new.fetch'
# Choose version and enter 'Y' on each request
ruby -r './lib/jstree-rails-4/source_file.rb' -e 'SourceFile.new.convert'
```

## 📄 License

[MIT](./LICENSE)
