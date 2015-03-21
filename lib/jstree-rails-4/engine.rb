module JSTree
  module Rails
    class Engine < ::Rails::Engine
      initializer :images do |app|
        app.config.assets.precompile +=
          %w()
      end
    end
  end
end
