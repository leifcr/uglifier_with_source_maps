require "action_controller/railtie"

module Sprockets
  autoload :Processing, "sprockets/processing"
end

module UglifierWithSourceMaps
  class Railtie < ::Rails::Railtie

    initializer "uglifier-with-source-maps.environment", :after => "sprockets.environment", :group => :all do |app|
      config = app.config
      config.assets.sourcemaps_prefix = "maps"
      config.assets.uncompressed_prefix = "sources"

      # manifest_dir = config.assets.manifest || File.join(Rails.public_path, config.assets.prefix)
      # digests_manifest = File.join(manifest_dir, "manifest.yml")
      # sources_manifest = File.join(manifest_dir, "sources_manifest.yml")
      # config.assets.digests        = (File.exist?(digests_manifest) && YAML.load_file(digests_manifest)) || {}
      # config.assets.source_digests = (File.exist?(sources_manifest) && YAML.load_file(sources_manifest)) || {}

      # # Clear digests if loading previous manifest format
      # config.assets.digests = {} if config.assets.digests[:digest_files]
    end
  end
end
