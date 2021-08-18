# -*- encoding: utf-8 -*-
require File.expand_path("../lib/jstree-rails-4/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "jstree-rails-4"
  s.version     = JSTree::Rails::VERSION
  s.authors     = ["Kesha Antonov"]
  s.email       = ["innokenty.longway@gmail.com"]
  s.homepage    = "https://github.com/kesha-antonov/jstree-rails-4"
  s.summary     = %q{Integrate jsTree javascript library with Rails asset pipeline}
  s.description = %q{jsTree is jquery plugin, that provides interactive trees. It is absolutely free, open source and distributed under the MIT license.}
  s.license     = 'MIT'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "json", "~> 2.5.1"
  s.add_development_dependency "thor", "~> 0.19"
  s.add_development_dependency "bundler", "~> 1.14"
  s.add_development_dependency "httpclient", "~> 2.8.3"
end
