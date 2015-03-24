module JSTree
  module Rails
    class Engine < ::Rails::Engine
      initializer :images do |app|
        app.config.assets.precompile +=
          %w(default/32px.png default/40px.png default/throbber.gif default-dark/32px.png default-dark/40px.png default-dark/throbber.gif)
      end
    end
  end
end
