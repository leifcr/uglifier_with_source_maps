module Sprockets
  module Compressors
    register_js_compressor(:uglify_with_source_maps, 'UglifierWithSourceMaps::Compressor', require: "uglifier_with_source_maps")
    register_js_compressor(:uglifier_with_source_maps, 'UglifierWithSourceMaps::Compressor', require: "uglifier_with_source_maps")
  end
  class LazyCompressor #:nodoc:
    def compress(data, context = nil)
      if compressor.instance_of?(UglifierWithSourceMaps::Compressor)
        compressor.compress(data, context)
      else
        compressor.compress(data)
      end
    end
  end
end
