#!/usr/bin/env rake
require "bundler/gem_tasks"
require File.expand_path('../lib/jstree-rails-4/source_file', __FILE__)

desc "Update with Ivaynberg's jstree Library"
task "update-jstree" do
  files = SourceFile.new
  files.fetch
  files.convert
end