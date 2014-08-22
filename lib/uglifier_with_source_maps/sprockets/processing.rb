begin
  require 'sprockets/processing'
rescue LoadError
end
module Sprockets
  # `Processing` is an internal mixin whose public methods are exposed on
  # the `Environment` and `Index` classes.
  module Processing

    # Assign a compressor to run on `application/javascript` assets.
    #
    # The compressor object must respond to `compress` or `compile`.
    def js_compressor=(compressor)
      expire_index!
      unregister_bundle_processor 'application/javascript', :js_compressor
      return unless compressor

      register_bundle_processor 'application/javascript', :js_compressor do |context, data|
        compressor.compress(data, context)
      end
    end

  end
end
