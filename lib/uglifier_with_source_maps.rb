require 'sprockets/railtie'
require 'uglifier'
require "uglifier_with_source_maps/version"
require "uglifier_with_source_maps/compressor"

module Sprockets
  # Processing
  autoload :Processing,      "sprockets/processing"
end

require 'sprockets'
Dir[File.expand_path('../uglifier_with_source_maps/sprockets/*.rb', __FILE__)].each do |f|
  require f
end
require 'uglifier_with_source_maps/actionpack/lib/sprockets/compressors'

require 'uglifier_with_source_maps/railtie'


