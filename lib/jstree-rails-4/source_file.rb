require 'thor'
require 'json'
require 'httpclient'

class SourceFile < Thor
  include Thor::Actions

  desc 'fetch source files', 'fetch source files from GitHub'
  def fetch
    filtered_tags = fetch_tags
    tag = select('Which tag do you want to fetch?', filtered_tags)
    self.destination_root = 'vendor/assets'
    remote = 'https://github.com/vakata/jstree'
    # IMAGES
    get "#{remote}/raw/#{tag}/dist/themes/default/32px.png", 'images/default/32px.png'
    get "#{remote}/raw/#{tag}/dist/themes/default/40px.png", 'images/default/40px.png'
    get "#{remote}/raw/#{tag}/dist/themes/default/throbber.gif", 'images/default/throbber.gif'
    get "#{remote}/raw/#{tag}/dist/themes/default-dark/32px.png", 'images/default-dark/32px.png'
    get "#{remote}/raw/#{tag}/dist/themes/default-dark/40px.png", 'images/default-dark/40px.png'
    get "#{remote}/raw/#{tag}/dist/themes/default-dark/throbber.gif", 'images/default-dark/throbber.gif'
    # CSS
    get "#{remote}/raw/#{tag}/dist/themes/default/style.css", 'stylesheets/jstree-default.scss'
    get "#{remote}/raw/#{tag}/dist/themes/default-dark/style.css", 'stylesheets/jstree-default-dark.scss'
    # JS
    get "#{remote}/raw/#{tag}/dist/jstree.js", 'javascripts/jstree.js'
  end

  desc 'convert css to use rails paths', 'make css use rails paths'
  def convert
    self.destination_root = 'vendor/assets'
    inside destination_root do
      gsub_file 'stylesheets/jstree-default.scss', %r/url\((?:\"|\')([^\)]+\.(?:gif|png))(?:\"|\')\)/, 'url("default/\1")'
      gsub_file 'stylesheets/jstree-default-dark.scss', %r/url\((?:\"|\')([^\)]+\.(?:gif|png))(?:\"|\')\)/, 'url("default-dark/\1")'
    end
  end

  private

    def fetch_tags
      http = HTTPClient.new
      #http.ssl_config.ssl_version = :SSLv23
      response = JSON.parse(http.get('https://api.github.com/repos/vakata/jstree/tags').body)
      response.map{|tag| tag['name']}.sort
    end

    def select msg, elements
      elements.each_with_index do |element, index|
        say(block_given? ? yield(element, index + 1) : ("#{index + 1}. #{element.to_s}"))
      end
      result = ask(msg).to_i
      elements[result - 1]
    end

end
